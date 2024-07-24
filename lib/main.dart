import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:imagegalery/code_kit/di/injection.config.dart';
import 'package:imagegalery/code_kit/di/injection.dart';
import 'package:imagegalery/code_kit/resources/themes/module/theme_module.dart';
import 'package:imagegalery/code_kit/routing/app_router.dart';
import 'package:imagegalery/generated/l10n.dart';

final _appRouter = AppRouter();

void main() {
  getIt.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ru'), // Spanish
      ],
      routerConfig: _appRouter.config(),
      title: 'Flutter Demo',
      theme: AppMainThemes.standardTheme,
    );
  }
}
