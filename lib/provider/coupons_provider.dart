import 'package:flutter/material.dart';

class CouponsProvider with ChangeNotifier {
  final List<Map<String, String>> _offer = [
    {
      'backgroundImage': 'assets/img/Clip path group.png',
      'title': '5 Days Rental Package',
      'discount': '10% Flat Of',
      'description': 'On all bookings of 5 days & more',
      'image': 'assets/img/firstpic_coupon.png',
      'carImage': 'assets/img/carfirstpic_coupon.png',
    },
    {
      'backgroundImage': 'assets/img/Mask Group 190.png',
      'title': '5 Days Rental Package',
      'discount': '10% Flat Of',
      'description': 'On all bookings of 5 days & more',
      'image': 'assets/img/secondpic_coupon.png',
      'carImage': 'assets/img/secondcar_coupon.png',
    },
    {
      'backgroundImage': 'assets/img/Mask Group 192.png',
      'title': '5 Days Rental Package',
      'discount': '10% Flat Of',
      'description': 'On all bookings of 5 days & more',
      'image': 'assets/img/thirdpic_coupon.png',
      'carImage': 'assets/img/carthirdpic_coupon.png',
    },
  ];
  List<Map<String, String>> get offer => _offer;
}
