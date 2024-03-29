import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../l10n/l10n.dart';
import '../../router/app_router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.user});

  final AppUser user;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: RepositoryProvider.value(
        value: user,
        child: AutoTabsScaffold(
          routes: [
            HomeBodyRoute(user: user),
            HistoryProviderRoute(cid: user.uuid),
            const NotificationRoute(),
            const AccountRoute(),
          ],
          bottomNavigationBuilder: (_, tabsRouter) {
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: l10n.homeLabel,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.restore),
                  label: l10n.actionLabel,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.notifications),
                  label: l10n.notificationLabel,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.account_circle),
                  label: l10n.accountLabel,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
