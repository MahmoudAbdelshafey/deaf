import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage1 extends StatelessWidget {
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
              child: Image.asset('images/start.jpg'),
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
                      text: 'We can ',
                    ),
                    TextSpan(
                      text: 'HELP YOU',
                      style:
                          TextStyle(color: Color.fromARGB(255, 201, 80, 223)),
                    ),
                    TextSpan(
                      text: ' learn what you need just join our community',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
