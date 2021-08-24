
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';
import 'package:sablond/lacator.dart';
import 'package:sablond/providers_value/search_text.dart';
import 'package:sablond/theme/theme_model.dart';
import 'database/databse_view_model.dart';
import 'package:sablond/view/my_home_page.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  setupLacator();
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('tr', 'TR')],
        //supportedLocales: LangSupported.locales,
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()),
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
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: tema.getTheme(),
            //darkTheme: tema.darkTheme, // Provide light theme // Provide dark theme
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            home: MyHomePage(title: 'Flutter Demo Home Page'),
            //home: sayfaiki(),
          );
        }));
  }
}
