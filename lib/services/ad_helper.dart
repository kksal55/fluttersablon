import 'dart:io';

class AdHelper {

  // static String get bannerAdUnitId {
  //   if (Platform.isAndroid) {
  //     return 'ca-app-pub-8786191356169416/7823871004';
  //   } else if (Platform.isIOS) {
  //     return 'ca-app-pub-8786191356169416/7823871004';
  //   } else {
  //     throw new UnsupportedError('Unsupported platform');
  //   }
  // }

    static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/6300978111';
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }

  // static String get interstitialAdUnitId {
  //   if (Platform.isAndroid) {
  //     return "ca-app-pub-8786191356169416/4187523108";
  //   } else if (Platform.isIOS) {
  //     return "ca-app-pub-8786191356169416/4187523108";
  //   } else {
  //     throw new UnsupportedError("Unsupported platform");
  //   }
  // }

    static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/1033173712";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/1033173712";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  // static String get rewardedAdUnitId {
  //   if (Platform.isAndroid) {
  //     return "ca-app-pub-3940256099942544/5224354917";
  //   } else if (Platform.isIOS) {
  //     return "ca-app-pub-3940256099942544/1712485313";
  //   } else {
  //     throw new UnsupportedError("Unsupported platform");
  //   }
  // }
}