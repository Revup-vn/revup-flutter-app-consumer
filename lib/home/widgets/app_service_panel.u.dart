import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../cubit/home_record_cubit.dart';
import 'app_service_item.u.dart';

class AppServicePanel extends StatefulWidget {
  const AppServicePanel({
    super.key,
  });

  @override
  State<AppServicePanel> createState() => _AppServicePanelState();
}

class _AppServicePanelState extends State<AppServicePanel> {
  late bool onRequest;

  @override
  void initState() {
    onRequest = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final stsBloc = context.watch<HomeRecordCubit>();
    stsBloc.state.when(
      enabled: () {
        setState(() {
          onRequest = false;
        });
      },
      disabled: () {
        setState(() {
          onRequest = true;
        });
      },
    );
    return Container(
      height: 140,
      color: Theme.of(context).colorScheme.inversePrimary,
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).colorScheme.onPrimary,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.onPrimary,
              spreadRadius: 6,
            ),
          ],
        ),
        width: 350,
        height: 100,
        child: Row(
          children: [
            Expanded(
              child: AppServiceItem(
                name: l10n.sosLabel,
                icon: const Icon(
                  Icons.sos,
                ),
                onPressed: onRequest
                    ? () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.onRequestLabel)),
                        );
                      }
                    : () {
                        showDialog<String>(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              backgroundColor: Colors.transparent,
                              insetPadding: const EdgeInsets.all(10),
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AutoSizeText(
                                          l10n.chooseVehicleLabel,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            AppServiceItem(
                                              name: l10n.carLabel,
                                              icon: const Icon(Icons.car_crash),
                                              onPressed: () async =>
                                                  _guardBannedUser(context, 0),
                                            ),
                                            const SizedBox(width: 32),
                                            AppServiceItem(
                                              name: l10n.motorbikeLabel,
                                              icon: const Icon(
                                                Icons.motorcycle,
                                              ),
                                              onPressed: () async =>
                                                  _guardBannedUser(context, 1),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
              ),
            ),
            Expanded(
              child: AppServiceItem(
                name: l10n.vehicleMaintenanceLabel,
                icon: const Icon(
                  Icons.build,
                ),
                onPressed: () {
                  // TODO(cantgim): implement sthg
                },
              ),
            ),
            Expanded(
              child: AppServiceItem(
                name: l10n.gasStationLabel,
                icon: const Icon(
                  Icons.local_gas_station,
                ),
                onPressed: () {
                  // TODO(cantgim): implement sthg
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onSelectMotorbike(BuildContext context) async {
    final boxRprRecord = Hive.box<dynamic>(
      'repairRecord',
    );
    await boxRprRecord.put(
      'vehicle',
      'motorbike',
    );
    final boxLocation = Hive.box<dynamic>(
      'location',
    );
    await context.router.popAndPush(
      FindNearbyRoute(
        currentLocation: LatLng(
          boxLocation.get(
            'currentLat',
          ) as double,
          boxLocation.get(
            'currentLng',
          ) as double,
        ),
      ),
    );
  }

  Future<void> _guardBannedUser(BuildContext context, int type) async {
    try {
      final _iau = context.read<IStore<AppUser>>();
      final uid = context.read<AuthenticateBloc>().state.maybeMap(
            orElse: () => throw NullThrownError(),
            authenticated: (value) => value.authType.user.uuid,
          );
      if ((await _iau.get(uid)).toOption().fold(
            () => false,
            (a) => a.maybeMap(
              orElse: () => false,
              consumer: (value) => !(value.violatedTimes >= 3 &&
                  (value.bannedValidatedDate ?? DateTime.now())
                          .compareTo(DateTime.now()) >=
                      0),
            ),
          )) {
        if (type == 0) {
          await _onSelectCarService(context);
        } else {
          await _onSelectMotorbike(context);
        }
      } else {
        throw Exception();
      }
    } catch (_) {
      await context.showInfoBar<void>(
        content: Text(context.l10n.bannedMessage),
      );
    }
  }

  Future<void> _onSelectCarService(BuildContext context) async {
    final boxRprRecord = Hive.box<dynamic>(
      'repairRecord',
    );
    await boxRprRecord.put(
      'vehicle',
      'car',
    );
    final boxLocation = Hive.box<dynamic>(
      'location',
    );

    await context.router.popAndPush(
      FindNearbyRoute(
        currentLocation: LatLng(
          boxLocation.get(
            'currentLat',
          ) as double,
          boxLocation.get(
            'currentLng',
          ) as double,
        ),
      ),
    );
  }
}
