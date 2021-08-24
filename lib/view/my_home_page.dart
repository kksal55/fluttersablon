// ignore_for_file: avoid_print

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sablond/function.dart';
import 'package:sablond/services/lang_keys.dart';
import 'package:sablond/database/database_helper.dart';
import 'package:sablond/database/databse_view_model.dart';
import 'package:sablond/providers_value/search_text.dart';
import 'package:sablond/services/banner_reklam.dart';
import 'package:sablond/services/gecis_reklam.dart';
import 'package:sablond/theme/theme_model.dart';
import 'menu.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  var kontrol = "Kontrol";
  GecisReklam gecisreklam = GecisReklam();
  DAO dao = DAO();
  DatabaseHelper dbBaglanti = DatabaseHelper();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);

    gecisreklam
        .loadInterstitialAd(); //Once degiskeni tanımlayıp sonra burada inistilazie ediyoruz.
  }

  final TextStyle dropdownMenuItem =
      TextStyle(color: Colors.black, fontSize: 18);
  bool isflightSelected = true;
  String aramakelimesi = "1";
  bool hastalik = false;

  @override
  Widget build(BuildContext context) {
    //context.locale =  Locale('en', 'US');
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    final _databaseHelper = Provider.of<DatabaseViewModel>(context);
    final kelime = Provider.of<SearchText>(context, listen: false);
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    final temamiz = Provider.of<ThemeNotifier>(context);
    //asdfinal _controller = TextEditingController();

    return Scaffold(
      drawer: drawer(),
      body: SafeArea(
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  title: Text(LangKey.app_name.tr()),
                  pinned: true,
                ),
              ];
            },
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 50),
                    color: Colors.red,
                  ),
                ),
                Positioned(right: 0, left: 0, bottom: 0, child: banner_reklam())
              ],
            )),
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    var tag = "Lifecycle";
    var kontrol = "Kontrol";
    // These are the callbacks
    switch (state) {
      case AppLifecycleState.resumed:
        print("$kontrol: $tag on resumed");
        break;
      case AppLifecycleState.inactive:
        print("$kontrol: $tag on inactive");
        break;
      case AppLifecycleState.paused:
        print("$kontrol: $tag on paused");
        break;
      case AppLifecycleState.detached:
        print("$kontrol: $tag on detached");
        break;
    }
    print("$kontrol: Lifecycle " + state.toString());
    print("$kontrol: Lifecycle " + TickerMode.of(context).toString());
  }

  yenilemeIslemleri() {
    dao.reklamSayisiniArttir();
    print("$kontrol: Reklam - Sayfa yenileneek değerler");
    dao.reklamGorunsunMu().then((value) {
      value == true
          ? gecisreklam.interstitialAd?.show()
          : print("$kontrol: Reklam görünmedi");
    });
  }
}
