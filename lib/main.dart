import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bmi_claculator/BMI.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        duration:3000,
        splash:Image.asset('assets/giphy.gif'),
        splashIconSize: 300,
        nextScreen:BMI(),
        backgroundColor: Colors.blueAccent,

      ),
      debugShowCheckedModeBanner:(false),

    );
  }
}
