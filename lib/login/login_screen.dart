import 'package:first_project/login/login_form.dart';
import 'package:first_project/login/login_machine.dart';
import 'package:first_project/register/presentation/view/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login-screen";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              padding: EdgeInsets.only(top: 70, left: 30),
              color: Theme.of(context).dividerColor,
              width: mediaQuery.width,
              height: mediaQuery.height * 0.25,
              child: Text(
                "Login",
                style: GoogleFonts.galindo(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 40,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
                child: Container(
              height: 20,
              width: mediaQuery.width,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90),
                  topRight: Radius.circular(90),
                ),
              ),
            ))
          ]),
          Container(
            width: 216,
            height: 244,
            child: Image.asset(
              "images/welcome2.jpg",
              width: mediaQuery.width,
              height: mediaQuery.height,
              fit: BoxFit.contain,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, LoginForm.routeName);
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 40),
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                color: Theme.of(context).dividerColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 5, right: 10),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 50,
                      )),
                  Text(
                    "Login by Text",
                    style: GoogleFonts.galindo(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, LoginMachine.routeName);
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 30),
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                color: Theme.of(context).dividerColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 5, right: 10),
                      child: FaIcon(
                        FontAwesomeIcons.robot,
                        color: Colors.white,
                        size: 40,
                      )),
                  Text(
                    "Login by ML",
                    style: GoogleFonts.galindo(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Don't have an account?  ",
                    style: GoogleFonts.gelasio(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, RegisterScreen.routeName);
                  },
                  child: Container(
                    child: Text("Signup",
                        style: GoogleFonts.gelasio(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).highlightColor,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
