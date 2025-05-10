import 'package:flutter/material.dart';

class HomePageProvider with ChangeNotifier {
  String _searchText = "";

  String get searchText => _searchText;

  void setSearchText(String text) {
    _searchText = text;
    notifyListeners();
  }

  final List<Map<String, String>> _arrWhyhappyeasy = [
    {"image": "assets/img/pic_247.png", "title": "24 x 7 Customer\n Support"},
    {
      "image": "assets/img/car_whyHome.png",
      "title": "Free Delivery On \n Booking Over 72hrs.",
    },
    {"image": "assets/img/pic_247.png", "title": "Clean & Sanitizied \n Cars."},
    {"image": "assets/img/car_whyHome.png", "title": "Easy Booking Experience"},
  ];

  List<Map<String, String>> get arrWhyhappyeasy => _arrWhyhappyeasy;

  final List<Map<String, String>> _arrOffer = [
    {"image": "assets/img/offers_home.png"},
    {"image": "assets/img/offers_home.png"},
  ];

  List<Map<String, String>> get arrOffer => _arrOffer;

  final List<Map<String, String>> _arrTestimonial = [
    {
      "name": "Himani Sing",
      "testimonial":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the when an unknown printer took galley of type and scrambled to make specimen book.",
    },
    {
      "name": "Himani Sing",
      "testimonial":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the when an unknown printer took galley of type and scrambled to make specimen book.",
    },
    {
      "name": "Himani Sing",
      "testimonial":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the when an unknown printer took galley of type and scrambled to make specimen book.",
    },
  ];

  List<Map<String, String>> get arrTestimonial => _arrTestimonial;
}
