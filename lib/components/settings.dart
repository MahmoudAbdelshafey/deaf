 import 'package:first_project/components/custom_drawer.dart';
import 'package:first_project/components/language_bottom_sheet.dart';
import 'package:first_project/components/theme_bottom_sheet.dart';
import 'package:first_project/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatefulWidget {
  final Uri whatsApp = Uri.parse('https://wa.link/yvdo0q');
  static String routeName = 'settings';
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          elevation: 0,
          centerTitle: true,
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 70,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Theme.of(context).dividerColor,
          actions: [],
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(22),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Theme',
                  style: GoogleFonts.galindo(
                      color: Theme.of(context).textTheme.bodySmall!.color,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                onTap: () {
                  showThemeBottomSheet();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.lightbulb_circle,
                      size: 70,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Language',
                  style: GoogleFonts.galindo(
                      color: Theme.of(context).textTheme.bodySmall!.color,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                onTap: () {
                  showlanguageBottomSheet();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.language,
                      size: 70,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Help',
                  style: GoogleFonts.galindo(
                      color: Theme.of(context).textTheme.bodySmall!.color,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                onTap: () {
                  launchUrl(widget.whatsApp);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.help_center,
                      size: 70,
                      color: Colors.orange,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Log Out',
                  style: GoogleFonts.galindo(
                      color: Theme.of(context).textTheme.bodySmall!.color,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => LoginScreen()));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.logout,
                      size: 70,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeBottomSheet());
  }

  void showlanguageBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheet());
  }
}
