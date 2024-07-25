// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:imagegalery/code_kit/di/app_locator.dart' as _i239;
import 'package:imagegalery/features/onboarding_feature/onboarding_feature_module.dart'
    as _i933;
import 'package:imagegalery/features/sign_in_feature/sign_in_module.dart'
    as _i577;
import 'package:imagegalery/features/sign_up_feature/repo/sign_up_repo.dart'
    as _i824;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i577.SignInRepo>(() => appModule.signInRepo());
    gh.factory<_i824.SignUpRepo>(() => appModule.signUpRepo());
    gh.singleton<_i558.FlutterSecureStorage>(() => appModule.secureStorage());
    gh.singleton<_i361.Dio>(() => appModule.dio());
    gh.singleton<_i933.UserTokenRepo>(() => appModule.tokenRepo());
    return this;
  }
}

class _$AppModule extends _i239.AppModule {}
