import 'package:flutter/material.dart';
import 'package:happyeasyrides/provider/login_provider.dart';
import 'package:happyeasyrides/screens/login.dart';
import 'package:happyeasyrides/screens/login_success.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  TextEditingController otpController = TextEditingController();
  String? phoneNumber;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    phoneNumber = Provider.of<LoginProvider>(context).phoneNumber;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,

      backgroundColor: Color(0xffe3f9f2),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/img/greenbg_login.png"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  SizedBox(height: screenHeight * 0.065),
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
                  SizedBox(height: screenHeight * 0.042),
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
          SizedBox(height: screenHeight * 0.04),
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
          SizedBox(height: screenHeight * 0.01),
          Container(
            height: screenHeight * 0.033,
            width: screenWidth * 0.46,
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
                  Consumer(
                    // ignore: avoid_types_as_parameter_names
                    builder: (context, LoginProvider, child) {
                      return Text(
                        // ignore: unnecessary_string_interpolations
                        "$phoneNumber",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff343D3C),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/img/editbutton_verification.png",
                      width: 26,
                      height: 26,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.047),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: PinCodeTextField(
              controller: otpController,
              onChanged: (value) {
                setState(() {});
              },
              backgroundColor: Colors.transparent,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              keyboardType: TextInputType.number,
              length: 4,
              appContext: context,
              blinkWhenObscuring: true,
              cursorColor: Color(0xffCCD7E8),
              textStyle: TextStyle(
                color: Color(0xffB8B9C9),
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
              pastedTextStyle: TextStyle(
                color: Color(0xffB8B9C9),
                fontWeight: FontWeight.bold,
              ),
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(50),
                fieldHeight: MediaQuery.of(context).size.height * 0.06,
                fieldWidth: MediaQuery.of(context).size.width * 0.19,
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                selectedFillColor: Colors.white,
                activeColor: Color(0xffCCD7E8),
                inactiveColor: Color(0xffCCD7E8),
                selectedColor: Color(0xffCCD7E8),
                fieldOuterPadding: EdgeInsets.zero,
              ),
              enableActiveFill: true,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 26.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: RichText(
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
                ),
              ],
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
                if (otpController.text.length == 4) {
                  String otpNumber = otpController.text;
                  Provider.of<LoginProvider>(context, listen: false).otpNumber =
                      otpNumber;
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginSuccessScreen(),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    otpController.text.length == 4
                        ? const Color(0xff0077AC)
                        : Colors.grey,
              ),
              child: Text(
                "Verify Now",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffF9F9F9),
                  fontFamily: "Poppins",
                ),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.027),
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
