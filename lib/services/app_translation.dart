abstract class AppTranslation {
  static Map<String, Map<String, String>> translationsKeys = {
    "en_US": enUS,
    "tr_TR": tr
  };
}

final Map<String, String> enUS = {
  "button_Ok": "Ok",
  "button_Iptal": "Cancel",
  "app_name": "Şifalı Bitkiler_en",
  "arttir": "Arttır_en",
  "azalt": "Azalt_eb",
};

final Map<String, String> tr = {
  "button_Ok": "Tamam",
  "button_Iptal": "İptal",
  "app_name": "Şifalı Bitkiler",
  "arttir": "Arttır",
  "azalt": "Azalt",
};
