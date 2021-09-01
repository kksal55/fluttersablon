// ignore_for_file: avoid_print, prefer_const_constructors_in_immutables

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/style.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sablond/function.dart';
import 'package:sablond/services/controller.dart';
import 'package:sablond/services/lang_keys.dart';
import 'package:sablond/database/database_helper.dart';
import 'package:sablond/database/databse_view_model.dart';
import 'package:sablond/providers_value/search_text.dart';
import 'package:sablond/services/banner_reklam.dart';
import 'package:sablond/services/gecis_reklam.dart';
import 'package:sablond/theme/theme_model.dart';
import 'menu.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
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
    Controller controller = Get.put(Controller());
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
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text(LangKey.app_name.tr),
                pinned: true,
              ),
            ];
          },
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 50),
                      child: Obx(
                        () => Text(
                          controller.sayacdeger().toString(),
                          style: TextStyle(
                              fontSize: 50,
                              color: temamiz.getTheme().primaryColor),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          heroTag: "1",
                          onPressed: () {
                            controller.sayacArttir();
                            print("Artıya tıklandı");
                          },
                          child: Text(LangKey.arttir.tr),
                        ),
                        FloatingActionButton(
                          heroTag: "2",
                          onPressed: () {
                            controller.sayacAzalt();
                          },
                          child: Text(LangKey.azalt.tr),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ConvexAppBar(
            style: TabStyle.reactCircle,
            backgroundColor: Theme.of(context).primaryColor,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              //TabItem(icon: Icons.grass_outlined,title: strings_app.bitkiler.tr()),
              TabItem(icon: Icons.local_florist_outlined, title: "Tab1"),
              TabItem(icon: Icons.local_bar_outlined, title: "Tab2"),
              TabItem(icon: Icons.free_breakfast_outlined, title: "Tab3"),
              TabItem(icon: Icons.hotel, title: "Tab1"),
            ],
            initialActiveIndex: 0,
            onTap: (int i) {
              print("bottom_bar : $i");
            },
          ),
          banner_reklam(),
        ],
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
