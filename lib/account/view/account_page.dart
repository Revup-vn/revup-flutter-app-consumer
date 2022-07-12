import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../l10n/l10n.dart';
import '../widgets/account_item.dart';
import '../widgets/default_avatar.dart';
import '../widgets/user_data.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final users = UserData.fetchAll();
    final user = users.first;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 60, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Stack(
                children: [
                  SizedBox(
                    height: 130,
                    width: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: CachedNetworkImage(
                        fadeInDuration: const Duration(milliseconds: 50),
                        fadeOutDuration: const Duration(milliseconds: 50),
                        imageUrl: user.urlImage,
                        // ignore: implicit_dynamic_parameter
                        errorWidget: (context, url, error) {
                          return DefaultAvatar(
                            textSize: Theme.of(context).textTheme.headline1,
                            userName: user.name,
                          );
                        },
                        height: 64,
                        width: 64,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(blurRadius: 5, spreadRadius: 0.1)
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor:
                            Theme.of(context).colorScheme.onPrimary,
                        radius: 17,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            size: 20,
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              AutoSizeText(
                user.name,
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
                callback: () {}, // TODO(namngoc231): Go to Service
              ),
              AccountItem(
                accountName: l10n.editProfileLabel,
                accountIcon: const Icon(Icons.portrait),
                callback: () {}, // TODO(namngoc231): Go to Edit Profile
              ),
              AccountItem(
                accountName: l10n.paymentLabel,
                accountIcon: const Icon(Icons.payment),
                callback: () {}, // TODO(namngoc231): Go to Payment
              ),
              AccountItem(
                accountName: l10n.organizationLabel,
                accountIcon: const Icon(Icons.business),
                callback: () {}, // TODO(namngoc231): Go to Organization account
              ),
              AccountItem(
                accountName: l10n.changePassWordLabel,
                accountIcon: const Icon(Icons.key),
                callback: () {}, // TODO(namngoc231): Go to Change PassWord
              ),
              AccountItem(
                accountName: l10n.changeLanguageLabel,
                accountIcon:
                    const Icon(IconData(0xe366, fontFamily: 'MaterialIcons')),
                callback: () {}, // TODO(namngoc231): Go to Change Language
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
                    l10n.guideAndSuportLabel,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
              AccountItem(
                accountName: l10n.faqsLabel,
                accountIcon: const Icon(Icons.quiz),
                callback: () {}, // TODO(namngoc231): Go to FAQs
              ),
              AccountItem(
                accountName: l10n.termsOfServiceLabel,
                accountIcon: const Icon(Icons.fact_check),
                callback: () {}, // TODO(namngoc231): Go to Terms of Service
              ),
              AccountItem(
                accountName: l10n.aboutUsLabel,
                accountIcon: const Icon(Icons.people),
                callback: () {}, // TODO(namngoc231): Go to About Us
              ),
              AccountItem(
                accountName: l10n.suportsLabel,
                accountIcon: const Icon(Icons.help),
                callback: () {}, // TODO(namngoc231): Go to Suports
              ),
              AccountItem(
                accountName: l10n.logoutLabel,
                accountIcon: const Icon(Icons.logout),
                callback: () {}, // TODO(namngoc231): Go to Logout
              ),
            ],
          ),
        ),
      ),
    );
  }
}