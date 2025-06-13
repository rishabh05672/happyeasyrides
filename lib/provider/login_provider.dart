import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  String _phoneNumber = "";

  String get phoneNumber => _phoneNumber;

  set phoneNumber(String newphoneNumber) {
    _phoneNumber = newphoneNumber;

    notifyListeners();
  }

  String _otpNumber = "";

  String get otpNumber => _otpNumber;

  set otpNumber(String newOtpNumber) {
    _otpNumber = newOtpNumber;

    notifyListeners();
  }
}
