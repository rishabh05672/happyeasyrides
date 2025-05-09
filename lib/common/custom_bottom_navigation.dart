import 'package:flutter/material.dart';
import 'package:happyeasyrides/screens/coupons.dart';

import 'package:happyeasyrides/screens/home_page.dart';
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
    //const HomeScreen(),
    const HomePage(),
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
                  Image.asset(
                    width: 24.03,
                    height: 23.99,
                    selectedTab == 0
                        ? "assets/img/selected_home_bottom.png"
                        : "assets/img/home_bottom.png",
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
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.14,
                    height: 3,
                    decoration: BoxDecoration(
                      color:
                          selectedTab == 0 ? Color(0xff16ce92) : Colors.white,
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
                  Image.asset(
                    width: 20.44,
                    height: 24.03,
                    selectedTab == 1
                        ? "assets/img/selected_booking_bottom.png"
                        : "assets/img/booking_bottom.png",
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
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.14,
                    height: 3,
                    decoration: BoxDecoration(
                      color:
                          selectedTab == 1 ? Color(0xff16ce92) : Colors.white,
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
                  Image.asset(
                    width: 24.81,
                    height: 24.8,
                    selectedTab == 2
                        ? "assets/img/selected_offer_bottom.png"
                        : "assets/img/offers_bottom.png",
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
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.14,
                    height: 3,
                    decoration: BoxDecoration(
                      color:
                          selectedTab == 2 ? Color(0xff16ce92) : Colors.white,
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
                  Image.asset(
                    width: 16.53,
                    height: 24,
                    selectedTab == 3
                        ? "assets/img/selected_profile_bottom.png"
                        : "assets/img/profile_bottom.png",
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
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.14,
                    height: 3,
                    decoration: BoxDecoration(
                      color:
                          selectedTab == 3 ? Color(0xff16ce92) : Colors.white,
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
