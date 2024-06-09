import 'package:first_project/components/custom_drawer.dart';
import 'package:first_project/components/store_nav_bar.dart';
import 'package:first_project/store/cart_page.dart';
import 'package:first_project/store/shop_page.dart';
import 'package:flutter/material.dart';

class StoreHome extends StatefulWidget {
  static const routeName = 'store-home';

  @override
  State<StoreHome> createState() => _StoreHomeState();
}

class _StoreHomeState extends State<StoreHome> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    // ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      endDrawer: CustomDrawer(),
      bottomNavigationBar: StoreNavBar(onTabChange: navigateBottomBar),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Theme.of(context).highlightColor,
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
                    "images/store-image.png",
                    scale: 7,
                  ),
                ],
              ),
            ),
          ),
        ],
        body: _pages[_selectedIndex],
      ),
    );
  }
}
