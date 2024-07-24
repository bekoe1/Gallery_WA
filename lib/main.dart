import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:imagegalery/code_kit/resources/themes/module/theme_module.dart';
import 'package:imagegalery/generated/l10n.dart';
import 'package:imagegalery/ui_kit/module/ui_kit_widgets_module.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      title: 'Flutter Demo',
      theme: AppMainThemes.standardTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiKitSearchAppBar(
        controller: controller,
        isSearchFieldEnabled: true,
      ),
      body: const Column(
        children: [
          Center(
            child: UiKitOutlinedButton(
              text: 'blabla',
            ),
          )
        ],
      ),
    );
  }
}
