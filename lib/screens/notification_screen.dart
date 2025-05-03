import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List notifications = [
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff15CF92), Color(0xff047EAA)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            width: width,
            height: height * 0.12,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/greentop_coupons.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "NOTIFICATIONS",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                color: Colors.white,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.only(top: 28),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: ListView.builder(
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Color(0xffefefef)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 18,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xff05073C),
                        radius: 30,
                        child: Image.asset(
                          notifications[index]["image"],
                          width: 21,
                          height: 22,
                        ),
                      ),
                      SizedBox(width: 9),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              notifications[index]["title"],
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                fontFamily: "Poppins",
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              notifications[index]["subtitle"],

                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff515F65),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
