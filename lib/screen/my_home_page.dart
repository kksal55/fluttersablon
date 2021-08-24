import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sablond/dao.dart';
import 'package:sablond/GsLocalization/gs_localization.dart';
import 'package:sablond/GsLocalization/lang_key.dart';
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
  GecisReklam gecisreklam = GecisReklam();
  DAO dao = DAO();
  DatabaseHelper dbBaglanti = DatabaseHelper();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      final _gsLocalization =
          Provider.of<GsLocalization>(context, listen: false);
      await _gsLocalization.load();
    });
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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    final gsLocalization = Provider.of<GsLocalization>(context, listen: false);
    final _databaseHelper = Provider.of<DatabaseViewModel>(context);
    final kelime = Provider.of<SearchText>(context, listen: false);
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    final temamiz = Provider.of<ThemeNotifier>(context);
    //asdfinal _controller = TextEditingController();

    return Scaffold(
      drawer: drawer(),
      body: SafeArea(
        child: Container(color: Colors.red,),
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

    // These are the callbacks
    switch (state) {
      case AppLifecycleState.resumed:
        print("on resumed oldu1");
        break;
      case AppLifecycleState.inactive:
        print("on inactive oldu1");
        break;
      case AppLifecycleState.paused:
        print("on paused oldu1");
        break;
      case AppLifecycleState.detached:
        print("on detached oldu1");
        break;
    }
    print("oldu1" + state.toString());
    print("oldu1" + TickerMode.of(context).toString());
  }

  yenilemeIslemleri() {
    dao.reklamSayisiniArttir();
    print("Sayfa yenileneek değerler");
    dao.reklamGorunsunMu().then((value) {
      value == true
          ? gecisreklam.interstitialAd?.show()
          : print("Reklam görünmedi");
    });
  }
}

