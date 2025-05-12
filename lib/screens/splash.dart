import 'dart:async';

import 'package:flutter/material.dart';
import 'package:happyeasyrides/screens/pageview_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => PageViewScreen()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/img/background_splash.png",
            fit: BoxFit.cover,
            width: width,
            height: height,
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/img/logo_splash.png",
                  fit: BoxFit.cover,
                  width: width * 0.32,
                  height: height * 0.14,
                ),

                Image.asset("assets/img/bg_splash.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
