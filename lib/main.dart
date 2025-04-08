import 'package:flutter/material.dart';
import 'package:happyeasyrides/screens/splash.dart';
import 'package:happyeasyrides/screens/splash01.dart';
import 'package:happyeasyrides/screens/splash02.dart';
import 'package:happyeasyrides/screens/splash03.dart';

void main() {
  runApp(const MyApp());
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
    );
  }
}
