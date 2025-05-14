import 'package:flutter/material.dart';
import 'package:happyeasyrides/common/custom_bottom_navigation.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({super.key});

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
            width: 274.21,
            height: 227.8,
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
                  builder: (context) {
                    // Alert dialog box
                    return AlertDialog(
                      content: Padding(
                        padding: const EdgeInsets.only(top: 48.0),
                        child: Image.asset(
                          "assets/img/location_otpscreen.png",
                          height: 109.5,
                          width: 109.5,
                        ),
                      ),
                      actions: <Widget>[
                        Column(
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              "Enable Your Location",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                color: Color(0xff100c08),
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Choose Your Location To Start Find\nThe Request Around You",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                color: Color(0xff535353),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(
                                top: 24,
                                bottom: 12,
                                left: 27,
                                right: 28,
                              ),

                              //Use My Location Button
                              child: SizedBox(
                                width: double.infinity,
                                height: 54,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff16CE92),
                                  ),
                                  child: Text(
                                    "Use My Location",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            //Skip for Now Button
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 12,
                                left: 27,
                                right: 28,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                height: 54,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) =>
                                                CustomBottomNavigation(),
                                      ),
                                      (route) => false,
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffF3F4FF),
                                  ),
                                  child: Text(
                                    "Skip for Now",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      color: Color(0xffB8B8B8),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
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
