import 'package:flutter/material.dart';
import 'package:imagegalery/generated/l10n.dart';

extension LocalizationExtension on BuildContext {
  S get localization {
    return S.of(this);
  }
}
