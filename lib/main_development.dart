import 'package:dartz/dartz.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:revup_core/core.dart';

import 'configs/firebase_options.dart';
import 'l10n/l10n.dart';
import 'router/app_router.gr.dart';

final appRouter = AppRouter();
void main() {
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
