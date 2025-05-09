import 'package:flutter/material.dart';

class HomePageProvider with ChangeNotifier {
  String _searchText = "";

  String get searchText => _searchText;

  void setSearchText(String text) {
    _searchText = text;
    notifyListeners();
  }

  void clearSearchText() {
    _searchText = '';
    notifyListeners();
  }
}
