import 'package:first_project/components/bottom_navigation_bar.dart';
import 'package:first_project/components/custom_drawer.dart';
import 'package:first_project/components/machine_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemsDetails extends StatefulWidget {
  // final Books data;
  final String name;
  final String imageCover;
  final String description;
  final String price;
  final String id;

  static String routeName = 'items';

  ItemsDetails({
    Key? key,
    required this.name,
    required this.imageCover,
    required this.description,
    required this.price,
    required this.id,
  }) : super(key: key);

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  int selectedIndex = 0;
  int Nav_Index = 0;
  final TextEditingController couponController = TextEditingController();
  bool isCouponValid = true;

  void checkCoupon() {
    setState(() {
      if (couponController.text == "DISCOUNT10") {
        isCouponValid = true;
      } else {
        isCouponValid = false;
      }
    });
  }

  void launchPaymentSite() async {
    const url = 'https://your-payment-site.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(x: 1),
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.payment_outlined,
                color: Colors.white,
                size: 65,
              ),
              SizedBox(width: 8),
            ],
          ),
          backgroundColor: Theme.of(context).dividerColor,
          actions: [],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: getMachineButton(context),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(60),
            padding: EdgeInsets.all(50),
            height: 380,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imageCover),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Text(
              widget.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyMedium!.color,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Text(
              '\$${widget.price}',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                TextField(
                  controller: couponController,
                  decoration: InputDecoration(
                    labelText: "Enter Coupon Code",
                    errorText: isCouponValid ? null : "Invalid Coupon Code",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.green,
                  ),
                  child: ElevatedButton(
                    onPressed: checkCoupon,
                    child: Text("Apply Coupon"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  color: Theme.of(context).dividerColor,
                  textColor: Colors.white,
                  onPressed: launchPaymentSite,
                  child: Text(
                    'BUY',
                    style: GoogleFonts.galindo(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 197, 197, 197),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
