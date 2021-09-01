import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Controller extends GetxController {
  var _sayacdeger = 0.obs;
  sayacArttir() {
    _sayacdeger++;
     print("sayac : $_sayacdeger");
  }

  sayacAzalt() {
    _sayacdeger--;
    print("sayac : $_sayacdeger");
  }

  sayacdeger() => _sayacdeger;
}
