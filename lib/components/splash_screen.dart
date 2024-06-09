import 'dart:async';
import 'package:dio/dio.dart';
import 'package:first_project/introduction_screens/intro_main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash-screen";


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, IntroductionScreen.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: 216,
                  height: 244,
                  child: Image.asset(
                    "images/splash.png",
                    width: mediaQuery.width,
                    height: mediaQuery.height,
                    fit: BoxFit.contain,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 80),
                      child: Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "DEAF & MUTED",
                      style: GoogleFonts.galindo(
                          color:Colors.white ,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
