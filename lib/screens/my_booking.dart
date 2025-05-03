import 'package:flutter/material.dart';
import 'package:happyeasyrides/screens/completed_screen.dart';
import 'package:happyeasyrides/screens/uncompleted_screen.dart';
import 'package:happyeasyrides/screens/upcoming_screen.dart';

class MyBookingScreen extends StatefulWidget {
  const MyBookingScreen({super.key});

  @override
  State<MyBookingScreen> createState() => _MyBookingScreenState();
}

class _MyBookingScreenState extends State<MyBookingScreen>
    with TickerProviderStateMixin {
  // TabController tabController = TabController(length: 3, vsync: thi)
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 24),
              height: 52,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),

              child: TabBar(
                padding: EdgeInsets.zero,
                unselectedLabelColor: Color(0xff343D3C),
                labelColor: Colors.white,
                labelStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
                dividerHeight: 0,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff0077AC),
                ),

                controller: TabController(length: 3, vsync: this),
                tabs: [Text("Upcoming"), Text("Completed"), Text("Cancelled")],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: TabBarView(
                  controller: TabController(length: 3, vsync: this),
                  children: [
                    UpcomingScreen(),
                    CompletedScreen(),
                    UncompletedScreen(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
