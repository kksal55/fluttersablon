import 'package:flutter/material.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_helper.dart';

class banner_reklam extends StatefulWidget {
  const banner_reklam({Key? key}) : super(key: key);

  @override
  _banner_reklamState createState() => _banner_reklamState();
}

class _banner_reklamState extends State<banner_reklam> {
  late BannerAd _bannerAd;

  bool _isBannerAdReady = false;

  @override
  void initState() {
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Kontrol: Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );
    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    if (_isBannerAdReady) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: Colors.white,
          width: double.infinity,
          //width: _bannerAd.size.width.toDouble(),
          height: _bannerAd.size.height.toDouble(),
          child: AdWidget(ad: _bannerAd),
        ),
      );
    } else {
      return Center(
        child: Container(
          height: 50,
          width: double.infinity,
          color: Colors.amber,
          child: Center(child: Text("reklam yüklenmedi")),
        ),
      );
    }
  }
}
