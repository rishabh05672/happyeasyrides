import 'package:flutter/material.dart';
import 'package:happyeasyrides/screens/home_page.dart';

import 'package:happyeasyrides/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: //DuplicateHome(),
          //CustomBottomNavigation(),
          SplashScreen(),
      //UpcomingScreen(),
      //MyBookingScreen(),
      //HomePage(),
    );
  }
}
