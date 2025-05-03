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
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PageViewScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/img/background_splash.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/img/logo_splash.png",
                  fit: BoxFit.cover,
                  width: 142,
                  height: 149,
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
