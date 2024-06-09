// import 'package:first_project/store/models/books.dart';
// import 'package:flutter/material.dart';
//
// class BooksShop extends ChangeNotifier {
//   final List<Books> _shop = [
//     Books(
//       name: 'Vocab Cards',
//       price: 22,
//       imagePath: 'images/1 book.jpg',
//     ),
//     Books(name: 'Signing Songs', price: 21, imagePath: 'images/2 book.jpg'),
//     Books(name: 'Children services', price: 56, imagePath: 'images/3 book.jpg'),
//     Books(name: 'Support children', price: 43, imagePath: 'images/4 book.webp'),
//     Books(
//         name: 'Britsh sign language',
//         price: 14,
//         imagePath: 'images/5 book.jpg'),
//     Books(name: 'ASL phrases', price: 87, imagePath: 'images/6 book.jpg'),
//     Books(name: 'Cue the Mind', price: 54, imagePath: 'images/7 book.jpg'),
//     Books(
//         name: 'Baby sign language', price: 80, imagePath: 'images/8 book.jpg'),
//     Books(name: 'Sign language', price: 62, imagePath: 'images/9 book.webp'),
//   ];
//
//   List<Books> _userCart = [];
//
//   List<Books> get booksStore => _shop;
//
//   List<Books> get userCart => _userCart;
//
//   void addItemToCart(Books books) {
//     _userCart.add(books);
//     notifyListeners();
//   }
//
//   void removeItemFromCart(Books books) {
//     _userCart.remove(books);
//     notifyListeners();
//   }
// }
