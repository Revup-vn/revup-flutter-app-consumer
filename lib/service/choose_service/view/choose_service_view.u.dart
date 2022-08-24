import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:revup_core/core.dart';

import '../../../l10n/l10n.dart';
import '../../../repairer_profile/models/service_data.u.dart';
import '../../../router/app_router.gr.dart';
import '../../../router/router.dart';
import '../../../shared/fallbacks.dart';
import '../../../shared/utils.dart';
import '../../widgets/service_checkbox_group.dart';
import '../bloc/choose_service_bloc.u.dart';

class ChooseServiceView extends StatelessWidget {
  const ChooseServiceView({
    super.key,
    required this.isSelectProduct,
    this.recordId,
    required this.form,
  });
  final bool isSelectProduct;
  final GlobalKey<FormBuilderState> form;
  final String? recordId;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final blocPage = context.read<ChooseServiceBloc>();
    blocPage.state.whenOrNull(
      initial: () => isSelectProduct
          ? blocPage.add(
              ChooseServiceEvent.detailRequestAccepted(
                recordId: recordId ?? '',
              ),
            )
          : blocPage.add(const ChooseServiceEvent.started()),
    );

    final user = getUser(context.read<AuthenticateBloc>().state)
        .getOrElse(() => throw NullThrownError());

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(l10n.addServiceAppBarTitle),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () => context.router
                .push<OptionalService>(const NewServiceRequestRoute())
                .then(
              (value) {
                if (value != null) {
                  context.read<ChooseServiceBloc>().add(
                        ChooseServiceEvent.newServiceRequested(
                          value,
                        ),
                      );
                }
              },
            ),
            child: Text(l10n.addLabel),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                children: [
                  BlocBuilder<ChooseServiceBloc, ChooseServiceState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                        failure: () =>
                            Center(child: AutoSizeText(l10n.commonErrorLabel)),
                        success: (providerId, services, catAndSv) {
                          final serviceList = services.toList();

                          return FormBuilder(
                            key: form,
                            child: ServiceCheckboxGroup(
                              serviceList: serviceList,
                              pendingService: const [],
                              catAndSv: catAndSv,
                              providerId: providerId,
                              isSelectProduct: false,
                            ),
                          );
                        },
                        orderModify:
                            (providerId, services, pendingService, catAndSv) {
                          final serviceList = services.toList();

                          return FormBuilder(
                            key: form,
                            child: ServiceCheckboxGroup(
                              serviceList: serviceList,
                              pendingService: pendingService,
                              catAndSv: catAndSv,
                              providerId: providerId,
                              isSelectProduct: true,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: ElevatedButton(
                onPressed: () {
                  // get value from form
                  form.currentState?.save();
                  final saveLst =
                      form.currentState?.value['data'] as List<ServiceData>;

                  if (saveLst.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(l10n.chooseAtLeastServiceLabel),
                      ),
                    );
                    return;
                  }

                  isSelectProduct
                      ? context.router.pop()
                      : context.read<ChooseServiceBloc>().add(
                            ChooseServiceEvent.serviceListSubmitted(
                              onRoute: () =>
                                  context.router.replace(HomeRoute(user: user)),
                              sendMessage: (token, recordId) => context
                                  .read<NotificationCubit>()
                                  .sendMessageToToken(
                                    SendMessage(
                                      title: 'Revup',
                                      body: l10n.submitRequestSuccessLabel,
                                      token: token,
                                      icon: kRevupIconApp,
                                      payload: MessageData(
                                        type: NotificationType
                                            .ConsumerRequestRepair,
                                        payload: <String, dynamic>{
                                          'recordId': recordId
                                        },
                                      ),
                                    ),
                                  ),
                              saveLst: saveLst,
                            ),
                          );
                },
                style: Theme.of(context).elevatedButtonTheme.style,
                child: AutoSizeText(l10n.confirmLabel),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
