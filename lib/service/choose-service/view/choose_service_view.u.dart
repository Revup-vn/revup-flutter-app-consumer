import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../l10n/l10n.dart';
import '../../../router/app_router.gr.dart';
import '../../../router/router.dart';
import '../../widgets/service_checkbox_tile.dart';
import '../bloc/choose_service_bloc.dart';

class ChooseServiceView extends StatelessWidget {
  const ChooseServiceView({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final blocPage = context.read<ChooseServiceBloc>();
    blocPage.state.whenOrNull(
      initial: () => blocPage.add(const ChooseServiceEvent.started()),
    );
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
                      success: (providerId, services, categories) {
                        final serviceList = services.toList();

                        return Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.only(bottom: 100),
                            itemCount: serviceList.length,
                            itemBuilder: (context, index) {
                              return ServiceCheckboxTile(
                                onTap: () => context.router.push(
                                  ServiceDetailRoute(
                                    serviceData: serviceList[index],
                                    categories: categories,
                                    providerId: providerId,
                                  ),
                                ),
                                serviceData: serviceList[index],
                                selectProMode: false,
                              );
                            },
                          ),
                        );
                      },
                      // orderModify: (IList<ServiceData> services) {
                      //   final servicesVector =
                      //       IVector.from(services.toIterable());

                      //   return Expanded(
                      //     child: ListView.builder(
                      //       padding: const EdgeInsets.only(bottom: 100),
                      //       itemCount: services.length(),
                      //       itemBuilder: (context, index) {
                      //         return ServiceCheckboxTile(
                      //           onTap: () => context.router.push(
                      //             ServiceDetailsRoute(
                      //               serviceData: servicesVector
                      //                   .get(index)
                      //                   .getOrElse(() => const ServiceData()),
                      //             ),
                      //           ),
                      //           serviceData: servicesVector
                      //               .get(index)
                      //               .getOrElse(() => const ServiceData()),
                      //           selectProMode: servicesVector
                      //               .get(index)
                      //               .getOrElse(ServiceData.new)
                      //               .isSelected,
                      //         );
                      //       },
                      //     ),
                      //   );
                      // },
                    );
                  },
                ),
              ],
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
                  context
                      .read<ChooseServiceBloc>()
                      .add(const ChooseServiceEvent.serviceListSubmitted());
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
