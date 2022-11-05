import 'package:flutter/material.dart';

enum LanguageType { ENGLISH, FRENCH }

const String ENGLISH = 'en';
const String FRENCH = 'fr';
const String ASSETS_PATH_LOCALIZATIONS = 'assets/translations';
const Locale FRENCH_LOCAL = Locale('fr', 'FR');
const Locale ENGLISH_LOCAL = Locale('en', 'US');

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.ENGLISH:
        return ENGLISH;
      case LanguageType.FRENCH:
        return FRENCH;
    }
  }
}
