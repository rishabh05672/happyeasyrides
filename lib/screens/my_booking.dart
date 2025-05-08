import 'package:flutter/material.dart';
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            width: width,
            height: height * 0.11,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/greentop_coupons.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white, size: 21),
          ),
          title: Text(
            "MY BOOKINGS",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 19.5, vertical: 24.5),
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
                decoration: BoxDecoration(
                  color: Colors.white,
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
