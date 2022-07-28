import 'package:flutter/material.dart';

class RepairerLoading extends StatelessWidget {
  const RepairerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
