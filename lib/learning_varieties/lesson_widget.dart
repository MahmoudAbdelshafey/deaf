import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonWidget extends StatelessWidget {
  static const String routeName = "lesson_widget";
  final String image;
  final String lessonName;
  final VoidCallback onTap;
  const LessonWidget({
    required this.image,
    required this.lessonName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 30),
        padding: EdgeInsets.all(10),
        width: mediaQuery.width,
        height: mediaQuery.height * 0.60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(image),
              Text(
                lessonName,
                style: GoogleFonts.galindo(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Theme.of(context).textTheme.bodySmall!.color,
                ),
              ),
              ElevatedButton(
                onPressed: onTap,
                child: Text(
                  "Learn",
                  style: GoogleFonts.galindo(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).dividerColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
