import 'package:dartz/dartz.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:revup_core/core.dart';

import 'package:revup/firebase_options.dart';
import 'package:revup/router/app_router.dart';
import 'l10n/l10n.dart';

void main() {
  final appRouter = AppRouter();
  bootstrap(
    route: tuple2(appRouter, appRouter.defaultRouteParser()),
    localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
    ],
    locales: AppLocalizations.supportedLocales,
    fOptions: DefaultFirebaseOptions.currentPlatform,
  );
}
