import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:revup/test/test.dart';
import '../../splash/splash.dart';
import '../account/view/account_page.dart';
import '../home/view/home_page.dart';
import '../payment/view/payment_page.dart';
import '../profile/view/signup6_page.dart';
import '../profile/view/update_profile_page.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage),
    AdaptiveRoute<void>(page: TestPage),
    //AdaptiveRoute<void>(page: AccountPage, initial: true),
    //AdaptiveRoute<void>(page: PaymentPage, initial: true),
    AdaptiveRoute<void>(page: Signup6Page, initial: true),
    //AdaptiveRoute<void>(page: UpdateProfilePage, initial: true),
    // AdaptiveRoute<void>(page: HomePage, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
