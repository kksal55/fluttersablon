import 'package:flutter/material.dart';

abstract class LangSupported {
  static List<String> get languageCodeList =>
      languagesMap.entries.map((e) => e.key).toList(growable: false);
  static List<Locale> get locales => languagesMap.entries
      .map((e) => Locale(e.key, ''))
      .toList(growable: false);
  // static List<String> get languageNamesList =>languagesMap.entries.map((e) => e.value).toList(growable: false);
  static final Map<String, String> languagesMap = <String, String>{
    "en": "English",
    "tr": "Türkçe"
  };
}
