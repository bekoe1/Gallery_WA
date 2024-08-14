part of 'extensions_module.dart';

extension BaseDateTimeFormat on DateTime {
  String toFormattedString() {
    return DateFormat.yMMMd().format(this);
  }
}
