// ignore: file_names
// ignore: non_constant_identifier_names
// ignore_for_file: avoid_print

import 'package:shared_preferences/shared_preferences.dart';
 
class DAO {
 
  Future<bool> reklamGorunsunMu() async {
    bool durum = false;
    await reklamSayisiniGetir().then((value) {
      value > 5 ? durum = true : durum = false;
    });
    return durum;
  }

  void reklamSayisiniArttir() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int sayi = (prefs.getInt('gecisReklamSayacDegeri') ?? 0) + 1;
    await prefs.setInt('gecisReklamSayacDegeri', sayi);
  }

  void reklamSayisiniSifirla() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('gecisReklamSayacDegeri', 0);
    print('Reklam sayıcısı sıfırlandı');
  }

  Future<int> reklamSayisiniGetir() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int reklamSayaciDegeri = (prefs.getInt('gecisReklamSayacDegeri') ?? 0);
    print('Reklam sayac değeri $reklamSayaciDegeri');
    return reklamSayaciDegeri;
  }

  int formul_bul( int id,int randomSayi){
		int formul_sonucu=0;

		formul_sonucu = (((randomSayi * (sayitoplami(randomSayi)-1)) + (id + sayitoplami(id))) * (sayitoplami(randomSayi) + sayitoplami(id)));
		formul_sonucu = formul_sonucu - ((sayitoplami(randomSayi)-2) * sayitoplami(randomSayi)) - (sayitoplami(formul_sonucu-1) * sayitoplami(formul_sonucu+formul_sonucu));
		return formul_sonucu;
	}

  int sayitoplami(int sayi){
        int sonuc = 0;
        while (sayi > 0)
        {
            sonuc += (sayi % 10);
            sayi = (sayi / 10).floor();
        }
        return sonuc;
    }
}
