import 'package:first_project/login/login_screen.dart';
import 'package:first_project/register/presentation/view/register_form.dart';
import 'package:first_project/register/presentation/view/register_machine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "register-screen";

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                padding: EdgeInsets.only(top: 70, left: 30),
                color: Theme.of(context).highlightColor,
                width: mediaQuery.width,
                height: mediaQuery.height * 0.25,
                child: Text(
                  "Signup",
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
                  height: 25,
                  width: mediaQuery.width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(90),
                      topRight: Radius.circular(90),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 216,
            height: 244,
            child: Image.asset(
              "images/df_google.png",
              width: mediaQuery.width,
              height: mediaQuery.height,
              fit: BoxFit.contain,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RegisterForm.routeName);
            },
            child: Container(
              margin: EdgeInsets.only(top: 20, bottom: 40),
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                color: Theme.of(context).highlightColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  Text(
                    "Signup by Text",
                    style: GoogleFonts.galindo(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RegisterMachine.routeName);
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 40),
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                color: Theme.of(context).highlightColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child: FaIcon(
                        FontAwesomeIcons.robot,
                        color: Colors.white,
                        size: 40,
                      )
                  ),
                  Text(
                    "Signup by ML",
                    style: GoogleFonts.galindo(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
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
                    "already have account?  ",
                    style: GoogleFonts.gelasio(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  child: Container(
                    child: Text(
                      "Login",
                      style: GoogleFonts.gelasio(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
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
