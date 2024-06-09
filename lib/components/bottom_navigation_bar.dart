import 'package:first_project/components/home_learning.dart';
import 'package:first_project/login/login_screen.dart';
import 'package:first_project/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class NavBar extends StatefulWidget {
  final Uri whatsApp = Uri.parse('https://wa.link/yvdo0q');

  NavBar({Key? key, required this.x}) : super(key: key);
  int x;

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  double getButtonSize(int index) {
    return widget.x == index ? 43.0 : 30.0;
  }

  double getHomesize(int index) {
    return widget.x == index ? 43.0 : 30.0;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                if (widget.x != 0) {
                  Navigator.pushReplacementNamed(context, HomePage.routeName);

                  setState(() {
                    widget.x = 0;
                  });
                }
              },
              icon: FaIcon(
                FontAwesomeIcons.home,
                size: getHomesize(0),
                color: widget.x == 0
                    ? Color(0xff357069)
                    : Colors.white.withOpacity(0.7),
              ),
            ),
            IconButton(
                onPressed: () {
                  if (widget.x != 1) {
                    Navigator.pushReplacementNamed(
                        context, StoreHome.routeName);

                    setState(() {
                      widget.x = 1;
                    });
                  }
                },
                icon: FaIcon(
                  FontAwesomeIcons.store,
                  size: getButtonSize(1),
                  color: widget.x == 1
                      ? Color(0xff357069)
                      : Colors.white.withOpacity(0.7),
                )),
            GestureDetector(
              onTap: () {
                launchUrl(widget.whatsApp); 
                if (widget.x != 2) {
                  setState(() {
                    widget.x = 2;
                  });
                }
              },
              child: FaIcon(
                FontAwesomeIcons.circleQuestion,
                size: getButtonSize(2),
                color: widget.x == 2
                    ? Color(0xff357069)
                    : Colors.white.withOpacity(0.7),
              ),
            ),
            IconButton(
                onPressed: () {
                  if (widget.x != 3) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => LoginScreen()));
                    setState(() {
                      widget.x = 3;
                    });
                  }
                },
                icon: FaIcon(
                  FontAwesomeIcons.signOut,
                  size: getButtonSize(3),
                  color: widget.x == 3
                      ? Color(0xff06A794)
                      : Colors.white.withOpacity(0.7),
                )),
          ],
        ),
      ),
    );
  }
}
