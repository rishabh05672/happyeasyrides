import 'package:flutter/material.dart';
import 'package:happyeasyrides/common/custom_bottom_navigation.dart';
import 'package:happyeasyrides/screens/completed_screen.dart';
import 'package:happyeasyrides/screens/cancelled_screen.dart';
import 'package:happyeasyrides/screens/upcoming_screen.dart';

class MyBookingScreen extends StatefulWidget {
  const MyBookingScreen({super.key});

  @override
  State<MyBookingScreen> createState() => _MyBookingScreenState();
}

class _MyBookingScreenState extends State<MyBookingScreen> {
  int selectedTab = 0;

  final List _tabControllername = ["Upcoming", "Completed", "Cancelled"];

  final List _screens = [
    UpcomingScreen(),
    CompletedScreen(),
    CancelledScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff15CF92), Color(0xff047EAA)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/img/greentop_coupons.png",
                  width: width,
                  height: height * 0.11,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.05,
                    bottom: height * 0.04,
                    top: height * 0.05,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CustomBottomNavigation(),
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/img/Icon feather-arrow-right.png",
                          width: width * 0.06,
                          height: width * 0.06,
                        ),
                      ),
                      SizedBox(width: width * 0.24),
                      Text(
                        "MY BOOKINGS",
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
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: width * 0.05,
                vertical: height * 0.03,
              ),
              width: width,
              height: height * 0.06,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(_tabControllername.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTab = index;
                      });
                    },
                    child: Container(
                      width: width * 0.3,
                      decoration: BoxDecoration(
                        color:
                            selectedTab == index
                                ? Color(0xff0077AC)
                                : Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          _tabControllername[index],
                          style: TextStyle(
                            color:
                                selectedTab == index
                                    ? Colors.white
                                    : Color(0xff343D3C),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 28.6),
                decoration: BoxDecoration(
                  color: Color(0xffF8F8FB),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: _screens[selectedTab],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
