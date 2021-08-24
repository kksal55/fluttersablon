
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sablond/base/SharedBase.dart';

class SharedPreferencesService extends SharedBase{
  
   Future<String> varsayilanBebegiGetir() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String gelenBebekID = prefs.getString('secili') ?? "0";

    print('$gelenBebekID idli bebek varsayılan bebek çağırıldı.');
    return gelenBebekID ;
  }
}