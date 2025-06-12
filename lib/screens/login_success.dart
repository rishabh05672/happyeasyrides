import 'dart:async';

import 'package:flutter/material.dart';

import 'package:happyeasyrides/widgets/location_permission_dialog.dart';

class LoginSuccessScreen extends StatefulWidget {
  const LoginSuccessScreen({super.key});

  @override
  State<LoginSuccessScreen> createState() => _LoginSuccessScreenState();
}

class _LoginSuccessScreenState extends State<LoginSuccessScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      showDialog(
        context: context,
        builder: (context) => LocationPermissionDialog(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffe3faf3),
      body: Column(
        children: [
          Image.asset(
            "assets/img/greentop_loginsuccess.png",
            fit: BoxFit.cover,
          ),
          SizedBox(height: screenHeight * 0.12),
          Image.asset(
            "assets/img/photo_loginsuccess.png",
            fit: BoxFit.cover,
            width: screenWidth * 0.62,
            height: screenHeight * 0.23,
          ),
          SizedBox(height: screenHeight * 0.04),
          Text(
            "LOGIN SUCCESS",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Color(0xff18AA4A),
              fontFamily: "Poppins",
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            "Your Account Has Been Verified\nSuccessfully",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xff303030),
              fontFamily: "Poppins",
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            height: screenHeight * 0.06,
            margin: EdgeInsets.only(
              left: screenWidth * 0.06,
              right: screenWidth * 0.06,
            ),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const LocationPermissionDialog(),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffffffff),
              ),
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff0077AC),
                  fontFamily: "Poppins",
                ),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "By creating an account, you agree to our\n",

                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    color: Color(0xff24272B),
                  ),
                ),
                TextSpan(
                  text: "Terms of Service and Privacy Policy",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: Color(0xff24272B),
                  ),
                ),
              ],
            ),
          ),
          Image.asset("assets/img/bottom_greensplash01.png", fit: BoxFit.cover),
        ],
      ),
    );
  }
}
