import 'package:first_project/components/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationScreen extends StatefulWidget {
  static const String routeName = "location";

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int Nav_Index = 0;

  void openGoogleMaps() async {
    final String latitude = "12.345";
    final String longitude = "67.890";

    final String googleMapsUrl =
        'https://www.google.com/maps/dir//269+%D8%B4%D8%A7%D8%B1%D8%B9+%D8%A8%D9%88%D8%B1+%D8%B3%D8%B9%D9%8A%D8%AF%D8%8C+%D8%A7%D9%84%D8%B3%D9%8A%D8%AF%D8%A9+%D8%B2%D9%8A%D9%86%D8%A8%D8%8C+%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9+%D8%A7%D9%84%D9%82%D8%A7%D9%87%D8%B1%D8%A9%E2%80%AC%D8%8C+%D8%A8%D8%B1%D8%AC+%D8%A7%D9%84%D9%84%D8%A4%D9%84%D8%A4%D8%A9,+El+Sayeda+Zeinab%E2%80%AD/@30.0348877,31.1646693,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x1458416ac9b18b1d:0xc67e67d637ce72d4!2m2!1d31.2470707!2d30.0349134?hl=en-eg&entry=ttu=$latitude,$longitude';

    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else {
      throw 'Could not open the map.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          elevation: 0,
          centerTitle: true,
          title: Column(
            children: [
              Icon(
                Icons.place,
                color: Colors.white,
              ),
              Container(
                child: Text(
                  "Locations",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Theme.of(context).dividerColor,
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              openGoogleMaps();
            },
            child: Container(
              margin: EdgeInsets.only(top: 70, bottom: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Text(
                      "Deaf and Dumb\nHospitals",
                      style: GoogleFonts.poppins(
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 124,
                    decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        openGoogleMaps();
                      },
                      child: Image.asset("images/places.jpg"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Text(
                  "Deaf and Dumb\nCenters",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Theme.of(context).textTheme.bodyMedium!.color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final String googleMapsLink =
                      'https://search.app.goo.gl/oih2DJq';

                  launch(googleMapsLink);
                },
                child: Container(
                  width: 120,
                  height: 124,
                  decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      final String googleMapsLink =
                          'https://www.google.com/maps/place/R299%2B3HJ+مركز+الأخصائية+هدى+موسى,+Janzur,+Libya%E2%80%AD/@32.8177297,13.021804,16z/data=!4m6!3m5!1s0x13a8e9d22f2caba5:0x54dde407deac6130!8m2!3d32.8176333!4d13.0190406!16s%2Fg%2F11pyc3n8j5';

                      launch(googleMapsLink);
                    },
                    child: Image.asset("images/places.jpg"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}