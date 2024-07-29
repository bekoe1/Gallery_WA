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
            FilledButton(
              onPressed: () async {
                await getIt<UserTokenRepo>().deleteTokens();
                exit(0);
              },
              child: const Text("logout"),
            ),
          ],
        ),
      ),
    );
  }
}
