import 'package:first_project/store/data/model/GetLoggedUserCart.dart';
import 'package:first_project/store/data/repository/deleteItemFromCart.dart';
import 'package:first_project/store/data/repository/getDataFromCart.dart';
import 'package:first_project/store/models/books.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:first_project/services/delete_item_from_cart_api_service.dart';
import 'package:first_project/store/books_title.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);
  static String routeName = 'cart-page';

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Books> _cartItems = [];

  @override
  void initState() {
    super.initState();
    _fetchCartItems();
  }

  Future<void> _fetchCartItems() async {
    final cartModel = await GetDataFromCart.getBooks();
    if (cartModel != null) {
      setState(() {
        _cartItems = cartModel.data.first.cartItems.map((cartItem) {
          var product = cartItem.product;
          return Books(
            id: product.id,
            title: product.title,
            description: product.description,
            sold: product.sold,
            isFree: product.isFree,
            price: product.price,
            imageCover: product.imageCover,
            images: product.images,
            file: '', // Assuming no file info in Product
            ratingsQuantity: product.ratingsQuantity,
            datumId: '', // Assuming no datumId info in Product
            videoLink: '', // Assuming no videoLink info in Product
          );
        }).toList();
      });
    }
  }

  void removeFromCart(Books book) async {
    bool success = await DeleteitemfromcartApiService.removeItemFromCart(book.id);
    if (success) {
      setState(() {
        _cartItems.removeWhere((item) => item.id == book.id);
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to remove item from cart')),
      );
    }
  }

  void payNow() async {
    const url = 'https://your-payment-site.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Text(
              'Your cart',
              style: GoogleFonts.galindo(
                fontWeight: FontWeight.w500,
                fontSize: 25,
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: _cartItems.isEmpty
                  ? Center(child: Text('Your cart is empty.'))
                  : ListView.builder(
                itemCount: _cartItems.length,
                itemBuilder: (context, index) {
                  var book = _cartItems[index];
                  return BookTitle(
                    name: book.title,
                    price: book.price,
                    imagePath: book.imageCover,
                    id: book.id,
                    isFree: book.isFree,
                    onPressed: () => removeFromCart(book),
                    icons: const [],
                    icon: const Icon(Icons.delete),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: payNow,
              child: Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Pay Now',
                    style: GoogleFonts.galindo(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 206, 134, 26),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
