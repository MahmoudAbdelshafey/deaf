import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginMachine extends StatelessWidget {
  static String routeName = 'login machine';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          elevation: 0,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.login,
                color: Colors.white,
                size: 40,
              ),
            
              
            ],
          ),
          backgroundColor: Theme.of(context).dividerColor,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'images/objectDetection.png',
            scale: 2,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).dividerColor,
            ),
            padding: EdgeInsets.all(90),
            child: GestureDetector(
              onTap: () {
                // Navigator.pushReplacementNamed(context, LoginForm.routeName);
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 40),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).highlightColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: Text(
                        "Login",
                        style: GoogleFonts.galindo(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Icon(
                          Icons.arrow_circle_right,
                          color: Colors.white,
                          size: 30,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
