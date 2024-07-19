import 'package:flutter/material.dart';
import 'package:imagegalery/code_kit/resources/button_themes.dart';
import 'package:imagegalery/ui_kit/app_bar/ui_kit_app_bar.dart';
import 'package:imagegalery/ui_kit/constants/const_colors.dart';
import 'package:imagegalery/ui_kit/constants/text_styles.dart';

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
        fontFamily: 'Roboto',
        inputDecorationTheme: InputDecorationTheme(
          errorMaxLines: 1,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: UiKitColors.gray,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffbb3b3b3),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: UiKitColors.grayLight,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xffbed3e3e),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xffbed3e3e),
            ),
          ),
          errorStyle: UiKitTextStyle.h4MediumStyle(
            color: const Color(0xffbed3e3e),
            fontSize: 12,
          ),
          contentPadding: const EdgeInsets.fromLTRB(9, 10, 9, 10),
        ),
        filledButtonTheme: ButtonThemes.filledButtonTheme,
        outlinedButtonTheme: ButtonThemes.outlinedButtonTheme,
        textButtonTheme: ButtonThemes.textButtonTheme,
        useMaterial3: true,
      ),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }
}
