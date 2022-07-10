import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../../account/widgets/use_avatar.dart';
import '../../l10n/l10n.dart';

class RepairReviewHomePage extends StatelessWidget {
  const RepairReviewHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const userName = 'Nam Anh';
    const timeRepair = '16:10 - 17:00';
    const dayRepair = '17/10/2022';
    const urlImage =
        'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280.jpg';
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                UserAvatar(
                  avatarSize: 30,
                  cameraContainerSize: 0,
                  cameraSize: 0,
                  textSize: Theme.of(context).textTheme.titleLarge,
                  userName: userName,
                  urlImage: urlImage,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: AutoSizeText(
                    userName,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                AutoSizeText(
                  '${l10n.serviceAccountLabel}: ${l10n.autoRepairLabel}',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                AutoSizeText(
                  '${l10n.timeLabel}: $timeRepair',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                AutoSizeText(
                  '${l10n.dayLabel}: $dayRepair',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).disabledColor,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
