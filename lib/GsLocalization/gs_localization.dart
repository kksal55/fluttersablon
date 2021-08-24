import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'lang_supported.dart';
class GsLocalization with ChangeNotifier {
  Locale _locale = Locale(LangSupported.languageCodeList.contains(window.locale.languageCode) ? window.locale.languageCode : 'en','tr');
  Locale get locale => _locale;
   Map<dynamic, dynamic>? _translated;
  String getTranslated(String langKey) =>_translated?[langKey] ?? '** $langKey not foundd';
  Future<void> load() async {
    final SharedPreferences mSharedPreferences = await SharedPreferences.getInstance();
    String tempLanguageCode = mSharedPreferences.getString("languageCode") ?? "notfound";
 if(_locale.languageCode == tempLanguageCode ){
    String jsonLang = await rootBundle.loadString("assets/localizations/${_locale.languageCode}.json");
    _translated = json.decode(jsonLang);
    return;
   }
   if(tempLanguageCode == "notfound"){
    await mSharedPreferences.setString("languageCode", _locale.languageCode);
    String jsonLang = await rootBundle.loadString("assets/localizations/${_locale.languageCode}.json");
    _translated = json.decode(jsonLang);
      return;
   }
    _locale = Locale(tempLanguageCode, '');
    String jsonLang = await rootBundle.loadString("assets/localizations/${_locale.languageCode}.json");
    _translated = json.decode(jsonLang);
     notifyListeners();
  }
  Future<void> setLocale(String languageCode) async {
  if(_locale.languageCode == languageCode )  return;
   final SharedPreferences mSharedPreferences = await SharedPreferences.getInstance();
    await mSharedPreferences.setString("languageCode",  languageCode);
    _locale = Locale(languageCode, '');
    String jsonLang = await rootBundle.loadString("assets/localizations/${_locale.languageCode}.json");
    _translated = json.decode(jsonLang);
      notifyListeners();
  }
}