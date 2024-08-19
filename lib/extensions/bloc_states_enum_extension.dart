part of 'extensions_module.dart';

extension IsLoading on BlocStatesEnum {
  bool isLoading() => this == BlocStatesEnum.loading;

  bool isLoaded() => this == BlocStatesEnum.loaded;

  bool hasRequestError() => this == BlocStatesEnum.requestError;

  bool isSuccess() => this == BlocStatesEnum.success;

  bool noImagePicked() => this == BlocStatesEnum.noImage;
}
