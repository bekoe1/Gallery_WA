part of '../sign_in_module.dart';

@RoutePage()
class TemporaryMainScreen extends StatelessWidget {
  const TemporaryMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Вы вошли в приложение",
        ),
      ),
    );
  }
}
