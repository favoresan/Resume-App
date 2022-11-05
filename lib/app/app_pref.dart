import 'package:flutter/material.dart';
import 'package:resume_app/resources/language_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String PREF_KEY_LANG = 'PREF_KEY_LANG';

class AppPreferences {
  Future<String> getAppLanguage() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    String? language = sharedPreferences.getString(PREF_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.ENGLISH.getValue();
    }
  }

  Future<void> setLanguageChanged() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.FRENCH.getValue()) {
      sharedPreferences.setString(
          PREF_KEY_LANG, LanguageType.ENGLISH.getValue());
    } else {
      sharedPreferences.setString(
          PREF_KEY_LANG, LanguageType.FRENCH.getValue());
    }
  }

  Future<Locale> getLocal() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.FRENCH.getValue()) {
      return FRENCH_LOCAL;
    } else {
      return ENGLISH_LOCAL;
    }
  }
}
