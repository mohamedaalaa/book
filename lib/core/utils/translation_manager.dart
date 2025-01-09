import 'package:flutter/material.dart';
import '../../config/locale/app_localizations.dart';

extension TranslationHelper on BuildContext {
  String translate(String key) {
    try {
      return AppLocalizations.of(this)!.translate(key)!;
    } catch (_) {
      return key;
    }
  }
}
