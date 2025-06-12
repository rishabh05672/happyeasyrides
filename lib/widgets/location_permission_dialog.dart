import 'package:flutter/material.dart';
import 'package:happyeasyrides/common/custom_bottom_navigation.dart';

class LocationPermissionDialog extends StatelessWidget {
  const LocationPermissionDialog({super.key});

  @override
  Widget build(BuildContext context) {
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Enable Your Location",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                color: Color(0xff100c08),
              ),
            ),
            Text(
              "Choose Your Location To Start Find\nThe Request Around You",
              textAlign: TextAlign.center,
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
            Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 27, right: 28),
              child: SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CustomBottomNavigation(),
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
  }
}
