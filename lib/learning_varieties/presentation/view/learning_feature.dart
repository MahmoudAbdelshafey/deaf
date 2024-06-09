import 'package:first_project/quizzes/presentation/view/quiz_feature.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../components/custom_drawer.dart';

class Learning_Feature extends StatelessWidget {
  const Learning_Feature({super.key, required this.myData});
  final Map<String, dynamic> myData;
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
                    myData['backImage'],
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
                        // Handle onTap
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: myData['backColor'],
                        ),
                        height: 420,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              child: Image.asset(
                                myData['itemList'][index].image,
                                width: double.infinity,
                                height: 270,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    myData['itemList'][index].title,
                                    style: GoogleFonts.galindo(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .color,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      var url =
                                          myData['itemList'][index].itemUrl;
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content:
                                                Text('Could not launch $url'),
                                          ),
                                        );
                                      }
                                    },
                                    icon: Icon(
                                      myData['itemList'][index].modelIcon,
                                      size: 40,
                                      color: Colors.black87,
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
              childCount: myData['itemList'].length,
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => Quiz_Feature(quizQuestions: myData['questions'])));
          },
          child: Icon(
            Icons.quiz_rounded,
            size: 40,
            color: Colors.white,
          ),
          backgroundColor: Theme.of(context).dividerColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
