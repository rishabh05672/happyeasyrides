import 'package:flutter/material.dart';

class SelectCityProvider with ChangeNotifier {
  final List<String> _cities = [
    "Delhi NCR",
    "Goa",
    "Guwahati",
    "Lucknow",
    "Amritsar",
    "Indore",
  ];

  List<String> get cities => _cities;
}
