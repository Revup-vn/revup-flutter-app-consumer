import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../widgets/payment_item.u.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({
    super.key,
    required this.user,
    this.completer,
  });
  final AppUser user;
  final Completer? completer;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final _paymentAccount =
        context.read<StoreRepository>().paymentAccount(user);
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
        leading: BackButton(
          onPressed: () {
            context.router.pop();
          },
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
                  paymentIcon: Assets.screens.iconMomo.svg(),
                  paymentName: l10n.momoLabel,
                  callback: () {
                    completer?.complete(true);
                    context.router.pop();
                  },
                ),
              ),
              Expanded(
                child: PaymentItem(
                  paymentIcon: Assets.screens.iconsZalo.svg(),
                  paymentName: l10n.zaloPayLabel,
                  callback: () {
                    showFlash(
                      context: context,
                      builder: (context, controller) => Flash<void>.dialog(
                        controller: controller,
                        child: Text(context.l10n.paymentSupportDialogLabel),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: PaymentItem(
                  paymentIcon: Assets.screens.iconCash.svg(),
                  paymentName: l10n.cashLabel,
                  callback: () {
                    completer?.complete(false);
                    context.router.pop();
                  },
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
