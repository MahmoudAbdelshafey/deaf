import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class StoreNavBar extends StatelessWidget {
  static const String routeName = 'store-nav-bar';
void Function(int)? onTabChange;
StoreNavBar({super.key,required this.onTabChange,});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: GNav(
        onTabChange:(value) => onTabChange!(value),
        color: Colors.grey[400],
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 30,
        tabActiveBorder: Border.all(color: Colors.white),
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: [
          
         
       
        GButton(
          icon: Icons.storefront_outlined,
        text: 'Store',
        ),
        GButton(
          icon: Icons.shopping_bag_outlined,
        text: 'Cart',
        ),
        
      ]),
      
    );
  }
}