part of 'extensions_module.dart';

extension ContextExtension on BuildContext {
  S get localization {
    return S.of(this);
  }

  Size get size => MediaQuery.of(this).size;
}
