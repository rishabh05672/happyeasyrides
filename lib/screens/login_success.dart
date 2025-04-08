import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3faf3),
      body: Column(
        children: [
          Image.asset(
            "assets/img/greentop_loginsuccess.png",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 124),
          Image.asset(
            "assets/img/photo_loginsuccess.png",
            fit: BoxFit.cover,
            width: 274.21,
            height: 227.8,
          ),
          SizedBox(height: 27.79),
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
            height: 62,
            margin: EdgeInsets.only(left: 32, right: 33.01),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff0077AC),
                  fontFamily: "Poppins",
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffffffff),
              ),
            ),
          ),
          SizedBox(height: 27),
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
