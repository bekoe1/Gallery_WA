import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imagegalery/code_kit/resources/button_themes.dart';
import 'package:imagegalery/ui_kit/buttons/ui_kit_add_button.dart';
import 'package:imagegalery/ui_kit/buttons/ui_kit_text_button.dart';
import 'package:imagegalery/ui_kit/constants/ui_kit_button_types.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        filledButtonTheme: ButtonThemes.filledButtonTheme,
        outlinedButtonTheme: ButtonThemes.outlinedButtonTheme,
        textButtonTheme: ButtonThemes.textButtonTheme,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200),
            BaseUiKitButton(
              type: ButtonType.outlined,
              isLoading: false,
              onPressed: () {},
              child: const Text("ggggggggggggggg"),
            ),
            const SizedBox(height: 20),
            AddButton(
              onPressed: () {},
              child: const Icon(CupertinoIcons.plus),
            ),
          ],
        ),
      ),
    );
  }
}
