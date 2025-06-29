import 'package:flutter/material.dart';
import 'package:happyeasyrides/provider/login_provider.dart';
import 'package:happyeasyrides/screens/otp_verification.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  bool isTick = false;

  @override
  void initState() {
    super.initState();
    phoneController.addListener(() {
      setState(() {
        isTick = phoneController.text.length == 10;
      });
    });
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  SizedBox(height: screenHeight * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.04),
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
          SizedBox(height: screenHeight * 0.033),
          Text(
            "LOGIN TO GET STARTED",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
              color: Color(0xff100C08),
            ),
          ),
          Text(
            "We Will Send You Code To Verify Your\nMobile Number",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
              color: Color(0xff535353),
            ),
          ),
          SizedBox(height: screenHeight * 0.09),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 27),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: Offset(0, 5),
                  color: Colors.white.withOpacity(0.5),
                ),
              ],
            ),
            child: TextFormField(
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              controller: phoneController,
              keyboardType: TextInputType.phone,
              maxLength: 10,

              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                counterText: "",
                hintText: "Enter your Mobile Number",
                hintStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  color: Colors.grey,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 19, left: 26.4, bottom: 17.98),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/img/phonelogo_textfield.png",
                        width: 21.47,
                        height: 28.02,
                      ),
                      SizedBox(width: 7.12),
                      Text(
                        "+91",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          color: Color(0xff505255),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: screenWidth * 0.02,
                          right: screenWidth * 0.01,
                        ),
                        child: Container(
                          width: 1,
                          height: 24,
                          color: Color(0xffCCD7E8),
                        ),
                      ),
                    ],
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                // suffix Icon
                suffixIcon:
                    phoneController.text.isEmpty
                        ? null
                        : Padding(
                          padding: EdgeInsets.only(
                            right: 20,
                            top: 20,
                            bottom: 20,
                          ),
                          child:
                              isTick
                                  ? Image.asset(
                                    "assets/img/righttick_textfield.png",
                                    fit: BoxFit.contain,
                                    width: 24,
                                    height: 24,
                                  )
                                  : GestureDetector(
                                    onTap: () {
                                      phoneController.text = phoneController
                                          .text
                                          .substring(
                                            0,
                                            phoneController.text.length - 1,
                                          );
                                    },
                                    child: Image.asset(
                                      "assets/img/red_cross.png",
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                        ),
              ),
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            height: 62,
            margin: EdgeInsets.only(
              left: screenWidth * 0.06,
              right: screenWidth * 0.06,
            ),
            child: ElevatedButton(
              onPressed:
                  phoneController.text.length == 10
                      ? () {
                        String phoneNumber = phoneController.text;
                        Provider.of<LoginProvider>(context, listen: false)
                            .phoneNumber = phoneNumber;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpVerificationScreen(),
                          ),
                        );
                      }
                      : null,
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    phoneController.text.length == 10
                        ? Color(0xff0077AC)
                        : Colors.grey,
              ),
              child: Text(
                "Confirm Now",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffF9F9F9),
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
