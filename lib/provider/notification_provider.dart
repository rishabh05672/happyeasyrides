import 'package:flutter/material.dart';

class NotificationProvider with ChangeNotifier {
  final List<Map<String, String>> _notifications = [
    {
      "image": "assets/img/percentage_sign_splash10.png",
      "title": "Lorem Ipsum is simply dummy",
      "subtitle":
          "Lorem Ipsum is simply dummy text of the printing typesetting industry. Lorem Ipsum has been industry standard dummy text ever since the when an unknown printer.",
    },
    {
      "image": "assets/img/secondpic_notification.png",
      "title": "Lorem Ipsum is simply dummy",
      "subtitle":
          "Lorem Ipsum is simply dummy text of the printing typesetting industry. Lorem Ipsum has been industry standard dummy text ever since the when an unknown printer.",
    },
    {
      "image": "assets/img/secondpic_notification.png",
      "title": "Lorem Ipsum is simply dummy",
      "subtitle":
          "Lorem Ipsum is simply dummy text of the printing typesetting industry. Lorem Ipsum has been industry standard dummy text ever since the when an unknown printer.",
    },
    {
      "image": "assets/img/secondpic_notification.png",
      "title": "Lorem Ipsum is simply dummy",
      "subtitle":
          "Lorem Ipsum is simply dummy text of the printing typesetting industry. Lorem Ipsum has been industry standard dummy text ever since the when an unknown printer.",
    },
    {
      "image": "assets/img/secondpic_notification.png",
      "title": "Lorem Ipsum is simply dummy",
      "subtitle":
          "Lorem Ipsum is simply dummy text of the printing typesetting industry. Lorem Ipsum has been industry standard dummy text ever since the when an unknown printer.",
    },
    {
      "image": "assets/img/secondpic_notification.png",
      "title": "Lorem Ipsum is simply dummy",
      "subtitle":
          "Lorem Ipsum is simply dummy text of the printing typesetting industry. Lorem Ipsum has been industry standard dummy text ever since the when an unknown printer.",
    },
    {
      "image": "assets/img/secondpic_notification.png",
      "title": "Lorem Ipsum is simply dummy",
      "subtitle":
          "Lorem Ipsum is simply dummy text of the printing typesetting industry. Lorem Ipsum has been industry standard dummy text ever since the when an unknown printer.",
    },
  ];
  List<Map<String, String>> get notifications => _notifications;
}
