import 'package:first_project/components/bottom_navigation_bar.dart';
import 'package:first_project/components/custom_drawer.dart';
import 'package:first_project/components/machine_button.dart';
import 'package:first_project/learning_varieties/learning_categories.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home_layout";

  @override
  State<HomeLayout> createState() => HomeLayoutState();
}

class HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  int Nav_Index = 0;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: CustomDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
                
              ],
            ),
            backgroundColor: Theme.of(context).highlightColor,
            expandedHeight: 100,
            floating: true,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/Learning.png', 
                fit: BoxFit.contain,
              ),
            ),
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  getLearningcategories(context, mediaQuery),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: getMachineButton(context),
      bottomNavigationBar: NavBar(x: 0),
    );
  }
}