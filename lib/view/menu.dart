import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sablond/services/lang_keys.dart';
import 'package:sablond/view/my_home_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'oval_right_border_clipper.dart';

class drawer extends StatelessWidget {
  var _url = "https://play.google.com/store/apps/dev?id=8383601536838877561";
  drawer({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final Color primary = Colors.white;
  final Color active = Colors.grey.shade800;
  final Color divider = Colors.grey.shade600;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
        clipper: OvalRightBorderClipper(),
        child: Drawer(
          child: Container(
            padding: const EdgeInsets.only(left: 16.0, right: 40),
            decoration: BoxDecoration(
                color: primary, boxShadow: [BoxShadow(color: Colors.black45)]),
            width: 300,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    // Container(
                    //   alignment: Alignment.centerRight,
                    //   child: IconButton(
                    //     icon: Icon(
                    //       Icons.power_settings_new,
                    //       color: active,
                    //     ),
                    //     onPressed: () {},
                    //   ),
                    // ),
                    Container(
                      height: 90,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [Colors.orange, Colors.deepOrange])),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage("assets/images/splash.png"),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      LangKey.app_name.tr(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    // Text(
                    //   this.runtimeType.toString(),
                    //   style: TextStyle(color: active, fontSize: 16.0),
                    // ),
                    SizedBox(height: 30.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(
                              title: "Şifalı Bitkiler",
                            ),
                          ),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: _buildRow(Icons.person_pin, "Anasayfa"),
                    ),
                    _buildDivider(),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => Tumbitki(
                        //             baslik: "Bitkiler",
                        //             tur: 2,
                        //           )),
                        //   (Route<dynamic> route) => false,
                        // );
                      },
                      child: _buildRow(Icons.home, "Tüm Bitkiler",
                          showBadge: true, badgesayi: "585"),
                    ),
                    _buildDivider(),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => Tumbitki(
                        //             baslik: "Hastalıklar",
                        //             tur: 1,
                        //           )),
                        //   (Route<dynamic> route) => false,
                        // );
                      },
                      child: _buildRow(Icons.message, "Tüm Hastalıklar",
                          showBadge: true, badgesayi: "232"),
                    ),
                    _buildDivider(),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => Tumbitki(
                        //             baslik: "Tüm Şifalı Yağlar",
                        //             tur: 4,
                        //           )),
                        //   (Route<dynamic> route) => false,
                        // );
                      },
                      child: _buildRow(Icons.notifications, "Tüm Şifalı Yağlar",
                          showBadge: true, badgesayi: "96"),
                    ),
                    _buildDivider(),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => Tumbitki(
                        //             baslik: "Tüm Şifalı Çaylar",
                        //             tur: 3,
                        //           )),
                        //   (Route<dynamic> route) => false,
                        // );
                      },
                      child: _buildRow(Icons.settings, "Tüm Şifalı Çaylar",
                          showBadge: true, badgesayi: "109"),
                    ),
                    // _buildDivider(),
                    // GestureDetector(
                    //   onTap: () {
                    //     _launchURL();
                    //   },
                    //   child: _buildRow(Icons.email, "Diğer Uygulamalarımız"),
                    // ),
                    _buildDivider(),
                    Platform.isAndroid
                        ? GestureDetector(
                            onTap: () {
                              SystemChannels.platform
                                  .invokeMethod<void>('SystemNavigator.pop');
                            },
                            child: _buildRow(Icons.info_outline, "Çıkış"),
                          )
                        : Container(),
                    Platform.isAndroid ? _buildDivider() : Container(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // void _launchURL() async => await canLaunch(_url)
  //     ? await launch(_url)
  //     : throw 'Could not launch $_url';

  Divider _buildDivider() {
    return Divider(
      color: divider,
    );
  }

  Widget _buildRow(IconData icon, String title,
      {bool showBadge = false, String badgesayi = "0"}) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(children: [
        Icon(
          icon,
          color: active,
        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: tStyle,
        ),
        Spacer(),
        if (showBadge)
          Material(
            color: Colors.deepOrange,
            elevation: 5.0,
            shadowColor: Colors.red,
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              width: 35,
              height: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                badgesayi,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
      ]),
    );
  }
}
