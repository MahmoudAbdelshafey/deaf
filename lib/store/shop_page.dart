import 'package:first_project/components/home_learning.dart';
import 'package:first_project/login/login_screen.dart';
import 'package:first_project/store/books_title.dart';
import 'package:first_project/store/data/repository/postDataToCart.dart';
// import 'package:first_project/store/data/repository/shopApiService.dart';
import 'package:first_project/store/data/repository/shopApiServices.dart';
import 'package:first_project/store/models/books.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data/model/shopModel.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Datum book) async {
    final apiServiceToPostCart = Postdatatocart(productId: book.id);
    await apiServiceToPostCart.getBooks();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Successfully added to cart',
          style: GoogleFonts.galindo(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: Theme.of(context).textTheme.bodySmall!.color,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 168, 168, 168),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, HomePage.routeName);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.home,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Add functionality for help button
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.circleQuestion,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => LoginScreen()),
                      );
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.signOut,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Learn more with ',
              style: GoogleFonts.galindo(
                fontWeight: FontWeight.w500,
                fontSize: 25,
                color: Theme.of(context).textTheme.bodySmall!.color,
              ),
            ),
            Text(
              'BOOKS !',
              style: GoogleFonts.galindo(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: FutureBuilder<List<Datum>?>(
                future: ShopApiService.getBooks(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(child: Text('No books available'));
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        var eachBook = snapshot.data![index];
                        return BookTitle(
                          id: eachBook.id,
                          name: eachBook.title,
                          description: eachBook.description,
                          isFree: eachBook.isFree,
                          imagePath: eachBook.imageCover,
                          // file: eachBook.file,
                          price: eachBook.price,
                          ratingsQuantity: eachBook.ratingsQuantity,
                          onPressed: () => addToCart(eachBook),
                          icon: const Icon(Icons.add_circle),
                          icons: const [
                            Icon(Icons.shopping_bag_outlined),
                          ],
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
