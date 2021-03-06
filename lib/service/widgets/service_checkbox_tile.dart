import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../choose-service/bloc/choose_service_bloc.dart';
import '../models/service_data.dart';

class ServiceCheckboxTile extends StatefulWidget {
  const ServiceCheckboxTile({
    super.key,
    required this.serviceData,
    this.onTap,
    required this.selectProMode,
  });
  final ServiceData serviceData;
  final VoidCallback? onTap;
  final bool selectProMode;

  @override
  State<ServiceCheckboxTile> createState() => _ServiceCheckboxTileState();
}

class _ServiceCheckboxTileState extends State<ServiceCheckboxTile> {
  bool? isChecked = false;
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
                child: CachedNetworkImage(
                  imageUrl: widget.serviceData.imageUrl ?? '',
                  placeholder: (context, url) => Assets.screens.dfAvatar.image(
                    fit: BoxFit.cover,
                    height: 64,
                    gaplessPlayback: true,
                    width: 64,
                  ),
                  errorWidget: (context, url, dynamic error) {
                    return Assets.screens.dfAvatar.image(
                      fit: BoxFit.cover,
                      height: 64,
                      gaplessPlayback: true,
                      width: 64,
                    );
                  },
                  height: 64,
                  width: 64,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            title: AutoSizeText(widget.serviceData.name ?? ''),
            subtitle: AutoSizeText(
              '${l10n.servicePriceLabel}: '
              '${widget.serviceData.productPriceRange ?? '0'}',
            ),
            trailing: Checkbox(
              checkColor: Theme.of(context).colorScheme.onPrimary,
              activeColor: Theme.of(context).colorScheme.primary,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });

                context.read<ChooseServiceBloc>().add(
                      ChooseServiceEvent.serviceSelectChanged(
                        serviceData: widget.serviceData,
                        isSelected: isChecked ?? false,
                      ),
                    );
              },
            ),
          ),
          if (widget.selectProMode)
            TextButton(
              onPressed: () {
                context.router.push(const ChooseProductRoute());
              },
              child: AutoSizeText(maxLines: 1, l10n.selectProductLabel),
            ),
        ],
      ),
    );
  }
}
