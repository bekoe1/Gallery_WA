part of 'main_module.dart';

void main() {
  getIt.init();

  getIt<Dio>().interceptors.add(
        AppInterceptor(
          tokenRepo: getIt<UserTokenRepo>(),
        ),
      );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

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
