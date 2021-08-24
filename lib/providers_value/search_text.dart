import 'package:flutter/cupertino.dart';

class SearchText extends ChangeNotifier {
  String search_Text = '';

  void updateSearchText(String newText) {
    search_Text = newText;
    notifyListeners();
  }
}