part of 'extensions_module.dart';

extension IsLoading on BlocStatesEnum {
  bool isLoading() => this == BlocStatesEnum.loading ? true : false;
}
