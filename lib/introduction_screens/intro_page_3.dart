import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).highlightColor,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.maxFinite,
              height: 280,
              child: Image.asset('images/start3.png'),
            ),
            SizedBox(height: 20),
            Text(
              "DEAF & MUTED",
              style: GoogleFonts.galindo(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
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
            )
          ],
        ),
      ),
    );
  }
}
