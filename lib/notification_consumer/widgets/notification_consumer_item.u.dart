import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:intl/intl.dart';

import '../../l10n/l10n.dart';

class NotificationConsumerItem extends StatelessWidget {
  const NotificationConsumerItem({
    super.key,
    required this.orderStatusNotification,
    required this.orderNumber,
    required this.serviceStartBooking,
  });
  final String orderStatusNotification;
  final String orderNumber;
  final DateTime serviceStartBooking;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final formatterDate = DateFormat('dd/MM/yyyy hh:mm');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AutoSizeText(
          orderStatusNotification,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ) ??
              TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
        const SizedBox(
          height: 16,
        ),
        AutoSizeText(
          '${l10n.codeOrderLabel}$orderNumber',
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ) ??
              TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
        const SizedBox(
          height: 16,
        ),
        AutoSizeText(
          formatterDate.format(serviceStartBooking),
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ) ??
              TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Divider(
          height: 1,
          thickness: 1,
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
