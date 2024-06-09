import 'package:first_project/components/feed_back.dart';
import 'package:first_project/components/home_learning.dart';
import 'package:first_project/components/location_screen.dart';
import 'package:first_project/components/userProfile.dart';
import 'package:first_project/login/login_screen.dart';
import 'package:first_project/components/settings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatefulWidget {
  final Uri whatsApp = Uri.parse('https://wa.link/yvdo0q');

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int Nav_Index = 0;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(150),
            ),
            child: Container(
              width: mediaQuery.width * 0.7,
              color: Color.fromARGB(255, 165, 165, 165),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => UserProfilePage(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 25, bottom: 25, left: 10),
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.solidUserCircle,
                            size: 38,
                            color: Colors.black,
                          ),
                          Text(
                            "  My Profile",
                            style: GoogleFonts.exo(
                              color: Theme.of(context).textTheme.bodyMedium!.color,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: mediaQuery.width * 0.7,
                    height: mediaQuery.height * 0.3,
                    color: Theme.of(context).highlightColor,
                    child: Image.asset("images/drawer.jpg"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 25, bottom: 25, left: 10),
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.home,
                            size: 38,
                            color: Colors.black,
                          ),
                          Text(
                            "  Home",
                            style: GoogleFonts.exo(
                                color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FeedBack(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 25, left: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.feedback,
                            size: 45,
                            color: Colors.black,
                          ),
                          Text(
                            "  feedback",
                            style: GoogleFonts.exo(
                                color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LocationScreen(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 18, bottom: 25),
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.locationDot,
                            size: 45,
                            color: Colors.black,
                          ),
                          Text(
                            "  location",
                            style: GoogleFonts.exo(
                                color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Settings(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 12, bottom: 25),
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            size: 45,
                            color: Colors.black,
                          ),
                          Text(
                            "  Settings",
                            style: GoogleFonts.exo(
                                color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      launchUrl(widget.whatsApp);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.help,
                            size: 45,
                            color: Colors.black,
                          ),
                          Text(
                            "  Help",
                            style: GoogleFonts.exo(
                                color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.signOut,
                            size: 40,
                            color: Colors.black,
                          ),
                          Text(
                            "  Logout",
                            style: GoogleFonts.exo(
                                color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
