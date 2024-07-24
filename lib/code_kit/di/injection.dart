import 'package:get_it/get_it.dart';
import 'package:imagegalery/code_kit/di/injection.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> initDependencies() async {
  getIt.init();
}
