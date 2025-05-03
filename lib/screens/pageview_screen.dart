import 'package:flutter/material.dart';
import 'package:happyeasyrides/screens/login.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController pageController = PageController();
  int currentPageIndex = 0;

  List splashData = [
    {
      "image": "assets/img/phone_splash01.png",
      "title": "Home Delivery & Return",
    },
    {"image": "assets/img/car_splash02.png", "title": "Flexible Car Booking"},
    {
      "image": "assets/img/location_splash03.png",
      "title": "Find Another Location",
    },
  ];

  Color greencolor = Color(0xff16CE92);
  Color textcolor = Color(0xff212121);
  Color bluecolor = Color(0xff0077AC);
  Color whitecolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text(
              "Skip>>",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: greencolor,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: splashData.length,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Spacer(),
                  Image.asset(
                    splashData[index]['image'],
                    width: 274,
                    height: 276,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 41),
                  Text(
                    splashData[index]['title'],
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: textcolor,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width:
                            currentPageIndex == 0
                                ? 35
                                : currentPageIndex == 1
                                ? 6
                                : 13,
                        height: 7,
                        decoration: BoxDecoration(
                          color: greencolor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        width:
                            currentPageIndex == 1
                                ? 35
                                : (currentPageIndex == 0 ? 13 : 6),
                        height: 7,
                        decoration: BoxDecoration(
                          color: greencolor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Container(
                        width:
                            currentPageIndex == 2
                                ? 35
                                : (currentPageIndex == 1 ? 13 : 6),
                        height: 7,
                        decoration: BoxDecoration(
                          color: greencolor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 45),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      minWidth: double.maxFinite,
                      elevation: 0,
                      height: 62,
                      color: index == 0 ? bluecolor : whitecolor,
                      shape: RoundedRectangleBorder(
                        side:
                            index == 0
                                ? BorderSide.none
                                : BorderSide(color: bluecolor),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        index == 0 ? "GET STARTED" : "NEXT",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: index == 0 ? whitecolor : bluecolor,
                        ),
                      ),
                    ),
                  ),
                  Image.asset("assets/img/bottom_greensplash01.png"),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
