import 'package:flutter/material.dart';
import 'package:imagegalery/code_kit/resources/themes/module/theme_module.dart';
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
    );
  }
}
