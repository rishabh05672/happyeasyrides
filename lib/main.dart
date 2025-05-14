import 'package:flutter/material.dart';
import 'package:happyeasyrides/provider/coupons_provider.dart';
import 'package:happyeasyrides/provider/home_page_provider.dart';
import 'package:happyeasyrides/provider/login_provider.dart';
import 'package:happyeasyrides/provider/notification_provider.dart';
import 'package:happyeasyrides/provider/select_city.dart';
import 'package:happyeasyrides/provider/upcoming_provider.dart';
import 'package:happyeasyrides/screens/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NotificationProvider()),
        ChangeNotifierProvider(create: (context) => HomePageProvider()),
        ChangeNotifierProvider(create: (context) => UpcomingProvider()),
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => CouponsProvider()),
        ChangeNotifierProvider(create: (context) => SelectCityProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: //DuplicateHome(),
          //CustomBottomNavigation(),
          SplashScreen(),
      //UpcomingScreen(),
      //MyBookingScreen(),
      //HomePage(),
      //SelectCity(),
    );
  }
}
