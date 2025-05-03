import 'package:flutter/material.dart';
import 'package:happyeasyrides/screens/coupons.dart';
import 'package:happyeasyrides/screens/home.dart';
import 'package:happyeasyrides/screens/my_booking.dart';

import 'package:happyeasyrides/screens/profile.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int selectedTab = 0;

  final List _screens = [
    const HomeScreen(),
    const MyBookingScreen(),
    const Coupons(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff0077AC),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Image.asset(
          "assets/img/carfabbutton.png",
          width: 25,
          height: 24,
          fit: BoxFit.fill,
        ),
      ),
      body: _screens[selectedTab],

      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedTab = 0;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.home,
                    color:
                        selectedTab == 0
                            ? Color(0xff16ce92)
                            : Color(0xff686E82),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color:
                          selectedTab == 0
                              ? Color(0xff16ce92)
                              : Color(0xff686E82),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedTab = 1;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.book,
                    color:
                        selectedTab == 1
                            ? Color(0xff16ce92)
                            : Color(0xff686E82),
                  ),
                  Text(
                    "My Booking",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color:
                          selectedTab == 1
                              ? Color(0xff16ce92)
                              : Color(0xff686E82),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedTab = 2;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.discount,
                    color:
                        selectedTab == 2
                            ? Color(0xff16ce92)
                            : Color(0xff686E82),
                  ),
                  Text(
                    "Offer",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color:
                          selectedTab == 2
                              ? Color(0xff16ce92)
                              : Color(0xff686E82),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedTab = 3;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.account_circle,
                    color:
                        selectedTab == 3
                            ? Color(0xff16ce92)
                            : Color(0xff686E82),
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color:
                          selectedTab == 3
                              ? Color(0xff16ce92)
                              : Color(0xff686E82),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
