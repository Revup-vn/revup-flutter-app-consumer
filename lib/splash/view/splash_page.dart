import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:connectycube_sdk/connectycube_sdk.dart' hide NotificationType;
import 'package:dartz/dartz.dart' hide State;
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../configs/video_call_config.dart' as config;
import '../../configs/video_call_config.dart';
import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../../shared/widgets/custom_dialog.dart';
import '../../video_call/video_call_manager/call_mange.u.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    context.read<NotificationCubit>().addForegroundListener((p0) {
      final type = p0.payload.type;
      switch (type) {
        case NotificationType.ProviderAccept:
          final providerId = p0.payload.payload['providerId'] as String;
          final recordId = p0.payload.payload['recordId'] as String;
          context.router.removeWhere(
            (route) => route.name == CountdownRoute.name,
          );
          context.router.pushAndPopUntil(
            OverViewOrderRoute(providerId: providerId, recordId: recordId),
            predicate: (route) => route.settings.name == HomeRoute.name,
          );

          break;
        case NotificationType.NormalMessage:
          final subType = p0.payload.payload['subType'] as String;
          if (subType == 'ProviderDeparted') {
            final providerId = p0.payload.payload['providerId'] as String;

            context.router.pushAndPopUntil(
              MapRouteRoute(providerId: providerId),
              predicate: (route) => route.settings.name == HomeRoute.name,
            );
            context.router.removeWhere(
              (route) => route.name == OverViewOrderRoute.name,
            );
          }
          if (subType == 'completedRepair') {
            final recordId = p0.payload.payload['recordId'] as String;
            final providerId = p0.payload.payload['providerId'] as String;
            context.router.push(
              ReviewRepairmanRoute(providerId: providerId, repairId: recordId),
            );
          }
          break;
        case NotificationType.ProviderRepaired:
          final providerId = p0.payload.payload['providerId'] as String;
          final recordId = p0.payload.payload['recordId'] as String;
          _showTopFlash(
            msg: context.l10n.repairDoneLabel,
            context: context,
          );

          context.router.pushAndPopUntil(
            ServiceInvoiceRoute(providerID: providerId, recordId: recordId),
            predicate: (route) => true,
          );
          context.router
              .removeWhere((route) => route.name == RepairStatusRoute.name);
          break;
        case NotificationType.ProviderDecline:
          showDialog<void>(
            barrierDismissible: false,
            context: context,
            builder: (bcontext) => SimpleDialogCustom(
              height: 150,
              content: [
                AutoSizeText(
                  context.l10n.providerBusy,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
              button: [
                TextButton(
                  onPressed: () {
                    bcontext.router.pop();
                    context.router.popUntil(
                      (route) => route.settings.name == HomeRoute.name,
                    );
                    context.router.removeWhere(
                      (route) => route.name == CountdownRoute.name,
                    );
                  },
                  child: AutoSizeText(
                    context.l10n.understoodLabel,
                  ),
                ),
              ],
            ),
          );
          break;
        // ignore: no_default_cases
        default:
          break;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<void>.delayed(
      const Duration(seconds: 5),
      () {
        init(
          config.APP_ID,
          config.AUTH_KEY,
          config.AUTH_SECRET,
        );
        CallManager.instance.init(context);
        final authBloc = context.read<AuthenticateBloc>();
        authBloc.state.maybeMap(
          failure: (_) {
            authBloc.add(const AuthenticateEvent.reset());

            return unit;
          },
          loading: (_) {
            authBloc.add(const AuthenticateEvent.reset());

            return unit;
          },
          orElse: () => unit,
        );
        final notifyCubit = context.read<NotificationCubit>();
        final sr = context.read<StoreRepository>();

        authBloc.state.maybeWhen(
          authenticated: (authType) async {
            await notifyCubit.requirePermission();
            await notifyCubit.registerDevice();

            final token = notifyCubit.state.maybeWhen(
              registered: (token) => token,
              failToRegister: () => '',
              orElse: () => throw NullThrownError(),
            );
            final _iuntr = sr.userNotificationTokenRepo(
              AppUserDummy.dummyConsumer(authType.user.uuid),
            );
            await _iuntr.create(
              Token(
                created: DateTime.now(),
                platform: Platform.operatingSystem,
                token: token,
              ),
            );

            await Hive.openBox<dynamic>('authType').then(
              (value) {
                value.put(
                  'auth',
                  authType.map(
                    google: (value) =>
                        AuthType.google(user: value.user).toJson(),
                    phone: (value) => AuthType.phone(user: value.user).toJson(),
                    email: (value) => AuthType.email(user: value.user).toJson(),
                  ),
                );
              },
            );
            await Hive.openBox<dynamic>('location');
            await Hive.openBox<dynamic>('repairRecord');
            final userr = CubeUser(
              login: authType.user
                  .mapOrNull(
                    consumer: (value) => value.vac,
                  )
                  ?.username,
              password: DEFAULT_PASS,
            );
            await createSession(userr).then((suser) async {
              await Hive.openBox<dynamic>('vacID')
                  .then((box) => box.put('id', userr.id));
              final sUser = CubeUser(
                id: suser.id,
                login: authType.user
                    .mapOrNull(
                      consumer: (value) => value.vac,
                    )
                    ?.username,
                password: DEFAULT_PASS,
              );
              await _loginToCubeChat(context, sUser);
            });
          },
          orElse: () => false,
        );
        context.router.push(
          authBloc.state.maybeWhen(
            empty: (isFirstTime) =>
                isFirstTime ? const OnboardingRoute() : const LoginRoute(),
            authenticated: (type) {
              return HomeRoute(user: type.user);
            },
            orElse: LoginRoute.new,
          ),
        );
      },
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: Assets.screens.welcome.svg()),
            const Flexible(
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showTopFlash({
    bool persistent = true,
    EdgeInsets margin = const EdgeInsets.only(left: 20),
    required String msg,
    required BuildContext context,
  }) {
    showFlash<Unit>(
      duration: const Duration(seconds: 2),
      context: context,
      persistent: persistent,
      builder: (_, controller) {
        return Flash<Widget>(
          controller: controller,
          margin: margin,
          behavior: FlashBehavior.floating,
          position: FlashPosition.top,
          forwardAnimationCurve: Curves.easeIn,
          reverseAnimationCurve: Curves.easeOut,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(6),
            bottomLeft: Radius.circular(6),
          ),
          child: FlashBar(
            content: Text(
              msg,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            indicatorColor: Colors.green,
            primaryAction: TextButton(
              onPressed: () {
                controller.dismiss();
              },
              child: Text(context.l10n.hideLabel),
            ),
          ),
        );
      },
    );
  }

  Future<void> _loginToCubeChat(
    BuildContext context,
    CubeUser user,
  ) async {
    await CubeChatConnection.instance.login(user).then(
      (cubeUser) {
        CallManager.instance.init(context);
      },
    ).catchError((dynamic error) async {});
  }
}
