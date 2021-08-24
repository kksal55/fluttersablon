import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sablond/lacator.dart';
import 'package:sablond/providers_value/search_text.dart';
import 'package:sablond/theme/theme_model.dart';
import 'database/databse_view_model.dart';
import 'package:sablond/screen/my_home_page.dart';
import 'GsLocalization/gs_localization.dart';
import 'GsLocalization/lang_supported.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  setupLacator();
  runApp(MyApp());
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
          ),
          ChangeNotifierProvider<GsLocalization>(
              create: (_) => GsLocalization(), lazy: false)
        ],
        child: Consumer2<GsLocalization, ThemeNotifier>(
            builder: (context, gsLocalization, tema, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            // theme: ThemeData(
            //   scaffoldBackgroundColor: Colors.white,
            //   primarySwatch: MyColors.navy,
            //   accentColor: MyColors.navy,
            // ),
            theme: tema.getTheme(),
            //darkTheme: tema.darkTheme, // Provide light theme // Provide dark theme
            locale: gsLocalization.locale,
            supportedLocales: LangSupported.locales,
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            home: MyHomePage(title: 'Flutter Demo Home Page'),
            //home: sayfaiki(),
          );
        }));
  }
}
