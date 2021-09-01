
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sablond/lacator.dart';
import 'package:sablond/providers_value/search_text.dart';
import 'package:sablond/services/app_translation.dart';
import 'package:sablond/theme/theme_model.dart';
import 'database/databse_view_model.dart';
import 'package:sablond/view/my_home_page.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  setupLacator();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeNotifier>(
            create: (_) => ThemeNotifier(),
          ),
          ChangeNotifierProvider<DatabaseViewModel>(
            create: (context) => DatabaseViewModel(),
          ),
          ChangeNotifierProvider<SearchText>(
            create: (context) => SearchText(),
          )
        ],
        child: Consumer<ThemeNotifier>(
            builder: (context, tema, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: tema.getTheme(),
            //darkTheme: tema.darkTheme, // Provide light theme // Provide dark theme
             translationsKeys: AppTranslation.translationsKeys,
      locale: Get.deviceLocale,
      fallbackLocale: Locale('tr', 'TR'),
            home: MyHomePage(),
            //home: sayfaiki(),
          );
        }));
  }
}
