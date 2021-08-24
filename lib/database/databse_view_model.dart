import 'package:flutter/cupertino.dart';
import 'package:sablond/base/DatabaseBase.dart';
import 'package:sablond/lacator.dart';
import 'package:sablond/lacator.dart';

import 'database_helper.dart';

class DatabaseViewModel with ChangeNotifier implements DatabaseBase {
  DatabaseHelper _databaseHelper = lacator<DatabaseHelper>();

 
}
