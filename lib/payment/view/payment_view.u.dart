import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flash/flash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../account/model/user_model.dart';
import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../widgets/payment_item.u.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({
    super.key,
    required this.user,
    required this.model,
  });
  final UserModel user;
  final AppUser model;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final _paymentAccount =
        context.read<StoreRepository>().paymentAccount(model);
    _paymentAccount.all().then<void>(
          (value) => value.fold(
            (l) => log('error'),
            (r) => log(r.length().toString()),
          ),
        );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          l10n.paymentLabel,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 50, 16, 0),
            child: AutoSizeText(
              l10n.morePaymentMethodsLabel,
              style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.bold) ??
                  const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: PaymentItem(
                  paymentIcon: Assets.screens.iconsZalo.svg(),
                  paymentName: l10n.zaloPayLabel,
                  callback: () {
                    // TODO(namngoc231): payment ZaloPay
                  },
                ),
              ),
              Expanded(
                child: PaymentItem(
                  paymentIcon: Assets.screens.iconMomo.svg(),
                  paymentName: l10n.momoLabel,
                  callback: () {
                    showFlash(
                      context: context,
                      builder: (context, controller) => Flash<void>.dialog(
                        controller: controller,
                        child: const Text('OK'),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
