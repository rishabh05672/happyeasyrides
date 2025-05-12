import 'package:flutter/material.dart';

class Splash10Screen extends StatefulWidget {
  const Splash10Screen({super.key});

  @override
  State<Splash10Screen> createState() => _Splash10ScreenState();
}

class _Splash10ScreenState extends State<Splash10Screen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      backgroundColor: Color(0xff15CF92),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff15CF92),
        flexibleSpace: Container(
          width: width,
          height: height * 0.11,

          // App bar Image
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/greentop_coupons.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: Text(
          "NOTIFICATION",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),

        // Back Button
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_sharp, color: Colors.white, size: 21),
        ),
      ),

      body: Expanded(
        // Main Container
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 36),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff100C08),
                  ),
                ),

                // Notification Card 1
                Container(
                  width: double.infinity,
                  height: 98,
                  margin: EdgeInsets.only(top: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffF8F8FB),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 52,
                        height: 52,
                        margin: EdgeInsets.only(left: 10, top: 23, bottom: 23),
                        decoration: BoxDecoration(
                          color: Color(0xff05073C),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          "assets/img/percentage_sign_splash10.png",
                          width: 21.99,
                          height: 22.01,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 18,
                            right: 15,
                            bottom: 16,
                            left: 9,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lorem Ipsum is simply dummy",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff100C08),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  "Lorem Ipsum is simply dummy text of the printing typesetting industry. Lorem Ipsum has been industry standard dummy text Lorem Ipsum is simply dummy text of the printing typesetting",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff515F65),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Notification Card 2
                Container(
                  width: double.infinity,
                  height: 98,
                  margin: EdgeInsets.only(top: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffF8F8FB),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 52,
                        height: 52,
                        margin: EdgeInsets.only(left: 10, top: 23, bottom: 23),
                        decoration: BoxDecoration(
                          color: Color(0xfff2f2f5),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Image.asset(
                          "assets/img/secondpic_notification.png",
                          width: 22.09,
                          height: 15.19,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 18,
                            right: 15,
                            bottom: 16,
                            left: 9,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lorem Ipsum is simply dummy",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff100C08),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  "Lorem Ipsum is simply dummy text of the printing typesetting industry. Lorem Ipsum has been industry standard dummy text Lorem Ipsum is simply dummy text of the printing typesetting",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff515F65),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Yesterday",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff100C08),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
