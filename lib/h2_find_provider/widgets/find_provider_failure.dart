import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';

class FindProviderFailure extends StatelessWidget {
  const FindProviderFailure({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.screens.sadMood.svg(width: 250, height: 250),
          const SizedBox(
            height: 16,
          ),
          AutoSizeText(
            l10n.unknownFailureLabel,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ) ??
                const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
