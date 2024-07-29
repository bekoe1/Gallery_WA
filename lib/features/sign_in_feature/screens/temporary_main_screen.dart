part of '../sign_in_module.dart';

@RoutePage()
class TemporaryMainScreen extends StatelessWidget {
  const TemporaryMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Вы вошли в приложение",
            ),
            FilledButton(
              onPressed: () async {
                final token = await getIt<UserTokenRepo>().getTokenFromStorage();
                log(token.toString());
              },
              child: const Text("see tokens"),
            ),
          ],
        ),
      ),
    );
  }
}
