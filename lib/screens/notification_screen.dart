import 'package:flutter/material.dart';
import 'package:happyeasyrides/provider/notification_provider.dart';
import 'package:provider/provider.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NotificationProvider>(context);
    Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff15CF92), Color(0xff047EAA)],
              ),
            ),
          ),
          Image.asset(
            "assets/img/greentop_coupons.png",
            width: width,
            height: height * 0.11,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21.31, bottom: 32, top: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    "assets/img/Icon feather-arrow-right.png",
                    width: 21,
                    height: 21,
                  ),
                ),
                SizedBox(width: size.width * 0.24),
                Text(
                  "NOTIFICATION",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * 0.13,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff100C08),
                      ),
                    ),
                    SizedBox(height: 7),
                    ...List.generate(provider.notifications.length, (index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 1,
                            color: Color(0xffefefef),
                          ),
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
                                  provider.notifications[index]["image"] ?? "",
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
                                      provider.notifications[index]["title"] ??
                                          "",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      provider.notifications[index]["subtitle"] ??
                                          "",
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
                    }),
                    // Expanded(
                    //   child: ListView.builder(
                    //     //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    //     itemCount: notifications.length,
                    //     itemBuilder: (context, index) {
                    //       final notification = notifications[index];
                    //       return

                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
