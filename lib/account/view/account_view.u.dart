import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../l10n/l10n.dart';
import '../../router/app_router.gr.dart';
import '../../shared/utils.dart';
import '../widgets/account_item.dart';
import '../widgets/avatar.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final mayBeUser = getUser(context.read<AuthenticateBloc>().state);
    //late AppUser user ;
    late var user = AppUser.consumer(
      uuid: '1a',
      firstName: 'Nam',
      lastName: 'Ngoc',
      phone: '0866199497',
      dob: DateTime.now(),
      addr: 'Ninh Binh',
      email: 'namngoc231@gmail.com',
      active: true,
      avatarUrl:
          'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280s.jpg',
      createdTime: DateTime.now(),
      lastUpdatedTime: DateTime.now(),
    );
    if (mayBeUser.isSome()) {
      user = mayBeUser.toNullable()!;
    } else {
      context.router.popUntil((route) => true);
    }

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Avatar(
                user: user,
                callback: () {
                  // TODO(namngoc231): Go to photo selection method
                },
              ),
              const SizedBox(
                height: 16,
              ),
              AutoSizeText(
                '${user.firstName} ${user.lastName}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              AutoSizeText(
                user.phone,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  AutoSizeText(
                    l10n.accountLabel,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
              AccountItem(
                accountName: l10n.serviceAccountLabel,
                accountIcon: const Icon(Icons.home_repair_service),
                callback: () {
                  // TODO(namngoc231): Go to Service
                },
              ),
              AccountItem(
                accountName: l10n.editProfileLabel,
                accountIcon: const Icon(Icons.portrait),
                callback: () {
                  context.router.push(
                    const UpdateProfileRoute(),
                  );
                },
              ),
              AccountItem(
                accountName: l10n.paymentLabel,
                accountIcon: const Icon(Icons.payment),
                callback: () {
                  context.router.push(
                    const PaymentRoute(),
                  );
                },
              ),
              AccountItem(
                accountName: l10n.organizationLabel,
                accountIcon: const Icon(Icons.business),
                callback: () {
                  // TODO(namngoc231): Go to Organization account
                },
              ),
              AccountItem(
                accountName: l10n.changePassWordLabel,
                accountIcon: const Icon(Icons.key),
                callback: () {
                  // TODO(namngoc231): Go to Change PassWord
                },
              ),
              AccountItem(
                accountName: l10n.changeLanguageLabel,
                accountIcon: const Icon(
                  IconData(0xe366, fontFamily: 'MaterialIcons'),
                ),
                callback: () {
                  // TODO(namngoc231): Go to Change Language
                },
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  AutoSizeText(
                    l10n.guideAndSupportLabel,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
              AccountItem(
                accountName: l10n.faqsLabel,
                accountIcon: const Icon(Icons.quiz),
                callback: () {
                  // TODO(namngoc231): Go to FAQs
                },
              ),
              AccountItem(
                accountName: l10n.termsOfServiceLabel,
                accountIcon: const Icon(Icons.fact_check),
                callback: () {
                  // TODO(namngoc231): Go to Terms of Service
                },
              ),
              AccountItem(
                accountName: l10n.aboutUsLabel,
                accountIcon: const Icon(Icons.people),
                callback: () {
                  // TODO(namngoc231): Go to About Us
                },
              ),
              AccountItem(
                accountName: l10n.supportsLabel,
                accountIcon: const Icon(Icons.help),
                callback: () {
                  // TODO(namngoc231): Go to Suports
                },
              ),
              AccountItem(
                accountName: l10n.logoutLabel,
                accountIcon: const Icon(Icons.logout),
                callback: () {
                  // TODO(namngoc231): Go to Logout
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}