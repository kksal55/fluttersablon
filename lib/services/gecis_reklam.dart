import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sablond/dao.dart';

import 'ad_helper.dart';

class GecisReklam {
  InterstitialAd? interstitialAd;
  bool isInterstitialAdReady = false;
  DAO dao = DAO();
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return AdHelper.interstitialAdUnitId;
    } else if (Platform.isIOS) {
      return AdHelper.interstitialAdUnitId;
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }

  loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstitialAdUnitId,
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          this.interstitialAd = ad;
          print("reklam yuklendi");
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              isInterstitialAdReady = false;
              print("reklam kapatildi");
              dao.reklamSayisiniSifirla();
              loadInterstitialAd();
            },
          );

          isInterstitialAdReady = true;
        },
        onAdFailedToLoad: (err) {
          //print('Failed to load an interstitial ad: ${err.message}');
          isInterstitialAdReady = false;
          print("reklam yuklenemedi");
        },
      ),
    );
  }
}
