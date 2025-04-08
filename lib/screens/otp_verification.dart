import 'package:flutter/material.dart';
import 'package:happyeasyrides/screens/login_success.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3f9f2),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/img/greenbg_login.png"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        "OTP Verification",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 42),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/img/logo_splash.png",
                        width: 112,
                        height: 109,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 31.58),
          Text(
            "VERIFICATION CODE",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
              color: Color(0xff100C08),
            ),
          ),
          Text(
            "We Have Sent The Code Verification To\nYour Mobile Number",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
              color: Color(0xff535353),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 34,
            width: 186,
            decoration: BoxDecoration(
              color: Color(0xffd5ebe4),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 14.86, right: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/img/phone_otpverification.png",
                    width: 12.29,
                    height: 16.04,
                  ),
                  SizedBox(width: 3.86),
                  Text(
                    "+911012345678",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff343D3C),
                    ),
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    "assets/img/editbutton_verification.png",
                    width: 26,
                    height: 26,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 47),
          Padding(
            padding: const EdgeInsets.only(left: 27.0, right: 27),
            child: PinCodeTextField(
              length: 4,
              appContext: context,
              blinkWhenObscuring: true,
              cursorColor: Color(0xffCCD7E8),
              pastedTextStyle: TextStyle(
                color: Color(0xffccd7e8),
                fontWeight: FontWeight.bold,
              ),
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(30),
                fieldHeight: 65,
                fieldWidth: 86,
                activeFillColor: Color(0xffCCD7E8),
                inactiveFillColor: Color(0xffffffff),
                selectedFillColor: Color(0xffffffff),
                activeColor: Color(0xffCCD7E8),
                inactiveColor: Color(0xffCCD7E8),
                selectedColor: Color(0xffCCD7E8),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 26.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Didn't Receive OTP?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: Color(0xff303030),
                    ),
                    children: [
                      TextSpan(
                        text: " Resend",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                          color: Color(0xff16CE92),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            height: 62,
            margin: EdgeInsets.only(left: 32, right: 33.01),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginSuccessScreen()),
                );
              },
              child: Text(
                "Verify Now",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffF9F9F9),
                  fontFamily: "Poppins",
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff0077AC),
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
