import 'package:get_it/get_it.dart';
import 'package:sablond/database/database_helper.dart';

import 'services/shared_preferences.dart';

final lacator = GetIt.asNewInstance();

void setupLacator() {
  lacator.registerLazySingleton(() => SharedPreferencesService());
  lacator.registerLazySingleton(() => DatabaseHelper());
}
