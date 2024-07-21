import 'package:flutter/material.dart';
import 'package:imagegalery/code_kit/resources/enums.dart';
import 'package:imagegalery/code_kit/resources/main_themes/app_main_themes.dart';
import 'package:imagegalery/ui_kit/app_bar/ui_kit_app_bar.dart';
import 'package:imagegalery/ui_kit/buttons/ui_kit_text_button.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BaseUiKitButton(
              type: ButtonType.text,
              isLoading: false,
              child: "Data",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
