import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileProvider with ChangeNotifier {
  File? _image;
  File? get image => _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      _image = File(pickedFile.path);
      notifyListeners();
    }
  }

  //=========================List========================
  final List _arrProfile = [
    {"image": "assets/img/first_splash11.png", "name": "Booking History"},
    {"image": "assets/img/second_splash11.png", "name": "Manage Documents"},
    {"image": "assets/img/third_splash11.png", "name": "Profile Verification"},
    {"image": "assets/img/fourth_splash11.png", "name": "Terms & Conditions"},
    {"image": "assets/img/fifth_splash11.png", "name": "Privacy Policy"},
    {
      "image": "assets/img/sixth_splash11.png",
      "name": "Cancellation & Refund Policy",
    },
    {"image": "assets/img/seventh_splash11.png", "name": "Support & Contact"},
    {"image": "assets/img/eighth_splash11.png", "name": "Log Out"},
  ];

  List get arrProfile => _arrProfile;
}
