import 'package:first_project/components/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedBack extends StatelessWidget {
  static String routeName = 'feedback';

  final List<Map<String, dynamic>> feedBackList = [
    {
      "image": "images/happy_msg2.webp",
      "title": "Good",
      "icon_button": 'images/goodButton3.webp',
      "message": "Thank you for your positive feedback!",
    },
    {
      "image": "images/normal_msg.webp",
      "title": "Not Bad",
      "icon_button": 'images/notbad.png',
      "message": "Your feedback has been noted. We'll work on improving.",
    },
    {
      "image": "images/sad_msg.webp",
      "title": "Bad",
      "icon_button": 'images/badButton.webp',
      "message": "We apologize for the inconvenience. Your feedback helps us improve.",
    },
  ];

  void _showAlertDialog(BuildContext context, String message, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Feedback"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                width: 100,
                height: 100,
              ),
              SizedBox(height: 10),
              Text(message),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).dividerColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            expandedHeight: 90,
            floating: true,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.passthrough,
                children: [
                  Image.asset(
                    "images/feedback.webp",
                    scale: 5,
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      onTap: () {
                        _showAlertDialog(context, feedBackList[index]['message'], feedBackList[index]['image']);
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromARGB(255, 222, 222, 222),
                        ),
                        height: 450,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              child: Image.asset(
                                feedBackList[index]['image'],
                                width: double.infinity,
                                height: 260,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    feedBackList[index]['title'],
                                    style: GoogleFonts.galindo(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      _showAlertDialog(context, feedBackList[index]['message'], feedBackList[index]['image']);
                                    },
                                    icon: ImageIcon(
                                      AssetImage(feedBackList[index]['icon_button']),
                                      size: 90,
                                      color: index == 0
                                          ? Colors.green
                                          : feedBackList[index]['title'] == "Not Bad"
                                              ? Color.fromARGB(255, 225, 203, 0)
                                              : Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              childCount: feedBackList.length,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
