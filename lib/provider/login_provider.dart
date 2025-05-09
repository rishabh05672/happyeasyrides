import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  String _phoneNumber = "";

  String get phoneNumber => _phoneNumber;

  set phoneNumber(String newphoneNumber) {
    _phoneNumber = newphoneNumber;
    notifyListeners();
  }
}
