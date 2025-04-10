import 'package:flutter/material.dart';
import 'package:happyeasyrides/screens/splash03.dart';

class Splash02Screen extends StatelessWidget {
  const Splash02Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffe3f9f2),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: screenWidth * 0.05,
                    top: screenHeight * 0.02,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Splash03Screen(),
                        ),
                      );
                    },
                    child: Text(
                      "Skip>>",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff16CE92),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.1),
            Center(
              child: Image.asset(
                "assets/img/car_splash02.png",
                fit: BoxFit.cover,
                width: screenWidth * 0.7,
                height: screenHeight * 0.3,
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Text(
              "Flexible Car Booking",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xff212121),
                fontFamily: "Poppins",
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 6,
                  height: 7,
                  decoration: BoxDecoration(
                    color: Color(0xff16CE92),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xff16ce92), width: 1),
                  ),
                ),
                SizedBox(width: 4),
                Container(
                  width: 35,
                  height: 7,
                  decoration: BoxDecoration(
                    color: Color(0xff16CE92),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: 4),
                Container(
                  width: 6,
                  height: 7,
                  decoration: BoxDecoration(
                    color: Color(0xff16CE92),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.045),
            Container(
              width: double.infinity,
              height: screenHeight * 0.065,
              margin: EdgeInsets.only(
                left: screenWidth * 0.06,
                right: screenWidth * 0.06,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Splash03Screen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Color(0xff0077AC), width: 1.4),
                  ),
                ),
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff0077AC),
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ),
            Image.asset(
              "assets/img/bottom_greensplash01.png",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
