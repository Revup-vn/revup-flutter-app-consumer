import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../bloc/notification_consumer_bloc.dart';
import '../widgets/notification_consumer_item.u.dart';

class NotificationConsumerView extends StatelessWidget {
  const NotificationConsumerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        AutoSizeText(
                          l10n.notificationLabel,
                          style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(fontWeight: FontWeight.bold) ??
                              const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    BlocBuilder<NotificationConsumerBloc,
                        NotificationConsumerState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () => const Text('Empty'),
                          loading: () =>
                              const Center(child: CircularProgressIndicator()),
                          failure: () => const Text('Failed'),
                          success: (notifications) => ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: notifications.length,
                            itemBuilder: (BuildContext context, int index) {
                              return NotificationConsumerItem(
                                orderStatusNotification: notifications
                                    .elementAt(index)
                                    .orderStatusNotification,
                                orderNumber:
                                    notifications.elementAt(index).orderNumber,
                                serviceStartBooking: notifications
                                    .elementAt(index)
                                    .serviceStartBooking,
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
