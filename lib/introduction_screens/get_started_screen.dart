import 'package:first_project/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).highlightColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(80),
                child: Container(
                  width: double.maxFinite,
                  height: 230,
                  child: Image.asset('images/welcome.png',
                  
                  alignment: Alignment.topCenter,
                  
                  ),
                  
                ),
              ),
              
            ),
            Text(
              "DEAF & MUTED",
              style: GoogleFonts.galindo(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.galindo(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'DEAF & DUMB ',
                      style: TextStyle(color: Color(0xFFC950DF)),
                    ),
                    TextSpan(
                      text:
                          'is a super app that has many features that everyone needs for ',
                    ),
                    TextSpan(
                      text: 'KNOWLEDGE',
                      style: TextStyle(color: Color(0xFFC950DF)),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(40),
                  right: Radius.circular(40),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
                child: Text(
                  'Get Started',
                  style: GoogleFonts.galindo(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).dividerColor,
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}