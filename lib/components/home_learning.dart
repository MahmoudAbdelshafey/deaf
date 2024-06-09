import 'package:first_project/components/bottom_navigation_bar.dart';
import 'package:first_project/components/custom_drawer.dart';
import 'package:first_project/components/machine_button.dart';
import 'package:first_project/components/home_layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String routeName = 'start_learning';

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
            expandedHeight: 80,
            floating: true,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.passthrough,
                children: [
                  Image.asset(
                    "images/house-icon.png",
                    scale: 12,
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(60)),
                    SizedBox(
                      width: 400,
                      height: 250,
                      child: Image.asset("images/learn.jpg"),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                      alignment: Alignment.center,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        color: Theme.of(context).dividerColor,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, HomeLayout.routeName);
                        },
                        child: Text(
                          'START LEARNING',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: getMachineButton(context),
      bottomNavigationBar: NavBar(
        x: 0,
      ),
    );
  }
}
