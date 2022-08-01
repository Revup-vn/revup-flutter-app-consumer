import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:revup_core/core.dart';

import '../../account/widgets/default_avatar.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    super.key,
    required this.callback,
    required this.user,
  });
  final AppUser user;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'Mã đơn hàng: 123456',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AutoSizeText(
                        'Dịch vụ xe máy - Thay săm xe',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AutoSizeText(
                        '12/06/2022  16:30',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                                ) ??
                            TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(48),
                              child: CachedNetworkImage(
                                fadeInDuration:
                                    const Duration(milliseconds: 50),
                                fadeOutDuration:
                                    const Duration(milliseconds: 50),
                                imageUrl: user.avatarUrl,
                                placeholder: (context, url) {
                                  return DefaultAvatar(
                                    textSize:
                                        Theme.of(context).textTheme.titleLarge,
                                    userName:
                                        '${user.firstName} ${user.lastName}',
                                  );
                                },
                                errorWidget: (context, url, dynamic error) {
                                  return DefaultAvatar(
                                    textSize:
                                        Theme.of(context).textTheme.titleLarge,
                                    userName:
                                        '${user.firstName} ${user.lastName}',
                                  );
                                },
                                height: 64,
                                width: 64,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          AutoSizeText(
                            '${user.firstName} ${user.lastName}',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          AutoSizeText(
                            'Bạn đã hủy',
                            style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                    ) ??
                                TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                            // style: Theme.of(context)
                            //         .textTheme
                            //         .labelLarge
                            //         ?.copyWith(
                            //           color: Theme.of(context)
                            //               .colorScheme
                            //               .tertiary,
                            //         ) ??
                            //     TextStyle(
                            //       color: Theme.of(context).colorScheme.tertiary,
                            //     ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
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
        ),
      ],
    );
  }
}
