import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../../repairer_profile/models/service_data.u.dart';
import '../../router/router.dart';

class ServiceCheckboxTile extends StatefulWidget {
  const ServiceCheckboxTile({
    super.key,
    required this.serviceData,
    this.onTap,
    required this.selectProMode,
    required this.index,
    required this.providerId,
    required this.field,
    required this.canSelect,
    required this.isSelectDefault,
    required this.recordId,
  });
  final ServiceData serviceData;
  final VoidCallback? onTap;
  final bool selectProMode;
  final bool canSelect;
  final bool isSelectDefault;
  final int index;
  final String providerId;
  final FormFieldState<List<ServiceData>> field;
  final String recordId;

  @override
  State<ServiceCheckboxTile> createState() => _ServiceCheckboxTileState();
}

class _ServiceCheckboxTileState extends State<ServiceCheckboxTile> {
  bool? isChecked;
  @override
  void initState() {
    super.initState();
    isChecked = widget.isSelectDefault;
    widget.field.value
        ?.removeWhere((element) => element.name == widget.serviceData.name);

    if (widget.isSelectDefault) {
      widget.field.value?.add(widget.serviceData);
    }
    log('FORM :: ${widget.field.value.toString()}');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Card(
      elevation: 0,
      child: Column(
        children: [
          ListTile(
            onTap: widget.onTap,
            leading: SizedBox(
              height: 48,
              width: 48,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(48),
                child: widget.selectProMode
                    ? CachedNetworkImage(
                        imageUrl: widget.serviceData.imageURL,
                        errorWidget: (context, url, dynamic error) =>
                            Assets.screens.setting.svg(
                          fit: BoxFit.fill,
                          height: 64,
                          width: 64,
                        ),
                        height: 64,
                        width: 64,
                        fit: BoxFit.fill,
                      )
                    : widget.serviceData.imageURL.isEmpty
                        ? Assets.screens.setting.svg(
                            fit: BoxFit.fill,
                            height: 64,
                            width: 64,
                          )
                        : CachedNetworkImage(
                            imageUrl: widget.serviceData.imageURL,
                            errorWidget: (context, url, dynamic error) =>
                                Image.file(
                              File(widget.serviceData.imageURL),
                              fit: BoxFit.fill,
                              height: 64,
                              width: 64,
                            ),
                            height: 64,
                            width: 64,
                            fit: BoxFit.fill,
                          ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  widget.serviceData.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                AutoSizeText(
                  widget.serviceData.serviceFee == -1
                      ? l10n.needQuotePriceLabel
                      : context.formatMoney(
                          widget.serviceData.serviceFee +
                              (widget.serviceData.products.isEmpty
                                  ? 0
                                  : widget.serviceData.products.fold(
                                      0,
                                      (p, e) => p + e.unitPrice * e.quantity,
                                    )),
                        ),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                if (widget.selectProMode)
                  AutoSizeText(
                    '''${l10n.productLabel}: ${widget.serviceData.products.isEmpty ? l10n.noneLabel : ('${widget.serviceData.products.first.name} x ${widget.serviceData.products.first.quantity}')}''',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
              ],
            ),
            trailing: Checkbox(
              checkColor: Theme.of(context).colorScheme.onPrimary,
              activeColor: Theme.of(context).colorScheme.primary,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });

                if (value ?? false) {
                  (widget.field.value)?.add(widget.serviceData);
                } else {
                  widget.field.value?.remove(widget.serviceData);
                }
                log('FORM :: ${widget.field.value.toString()}');
              },
            ),
          ),
          if (widget.selectProMode && widget.canSelect && (isChecked ?? false))
            TextButton(
              onPressed: () async {
                final isStarted = (await context
                        .read<IStore<RepairRecord>>()
                        .get(widget.recordId))
                    .map<Option<RepairRecord>>(
                      (r) => r.maybeMap(
                        accepted: some,
                        started: some,
                        orElse: none,
                      ),
                    )
                    .fold<Option<RepairRecord>>(
                      (l) => none(),
                      (r) => r,
                    )
                    .any(
                      (a) =>
                          a.maybeMap(started: (v) => true, orElse: () => false),
                    );
                await context.router.push(
                  ChooseProductRoute(
                    serviceData: widget.serviceData,
                    providerId: widget.providerId,
                    recordId: widget.recordId,
                    isStarted: isStarted,
                  ),
                );
              },
              child: AutoSizeText(maxLines: 1, l10n.selectProductLabel),
            ),
        ],
      ),
    );
  }
}
