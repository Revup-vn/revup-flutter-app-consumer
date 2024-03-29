import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../order/models/pending_service_model.dart';
import '../../repairer_profile/models/service_data.u.dart';
import '../../router/router.dart';
import 'service_checkbox_tile.dart';

class ServiceCheckboxGroup extends StatelessWidget {
  const ServiceCheckboxGroup({
    super.key,
    required this.serviceList,
    required this.pendingService,
    required this.providerId,
    required this.isSelectProduct,
    required this.recordId,
    required this.form,
    required this.initialList,
  });
  final List<ServiceData> serviceList;
  final List<PendingServiceModel> pendingService;
  final GlobalKey<FormBuilderState> form;
  final String providerId;
  final bool isSelectProduct;
  final String recordId;
  final List<ServiceData> initialList;

  @override
  Widget build(BuildContext context) {
    final svDataOptional = pendingService
        .map(
          ServiceData.fromPendingService,
        )
        .toList()
      ..addAll(
        serviceList
            .where(
              (element) => element.isOptional,
            )
            .toList(),
      );
    log('SV OPTIONAL :: $svDataOptional');
    return FormBuilderField<List<ServiceData>>(
      initialValue: initialList,
      name: 'data',
      builder: (field) {
        return ListView.builder(
          shrinkWrap: true,
          padding: !isSelectProduct
              ? const EdgeInsets.only(bottom: 200)
              : const EdgeInsets.only(bottom: 70),
          physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics(),
          ),
          itemCount: serviceList.length,
          itemBuilder: (context, index) {
            return ServiceCheckboxTile(
              key: UniqueKey(),
              onTap: () => context.router.push(
                ServiceDetailRoute(
                  serviceData: serviceList[index],
                  providerId: providerId,
                ),
              ),
              serviceData: serviceList[index],
              selectProMode: isSelectProduct,
              isSelectDefault: pendingService
                      .map((e) => e.name)
                      .contains(serviceList[index].name) ||
                  serviceList[index].isOptional,
              canSelect: !serviceList[index].isOptional,
              index: index,
              providerId: providerId,
              field: field,
              recordId: recordId,
            );
          },
        );
      },
    );
  }
}
