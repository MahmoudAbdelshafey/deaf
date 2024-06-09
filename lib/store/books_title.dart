import 'package:first_project/store/item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_project/store/models/books.dart';

class BookTitle extends StatelessWidget {
  final void Function()? onPressed;
  final Icon icon;
  final List<Icon> icons;

  final String id;
  final String name;
  final String? description;
  final bool isFree;
  final String imagePath;
  final String? file;
  final int? price;
  final int? ratingsQuantity;

  const BookTitle({
    Key? key,
    required this.id,
    required this.name,
    this.description,
    required this.isFree,
    required this.imagePath,
    this.file,
    required this.price,
    this.ratingsQuantity,
    required this.onPressed,
    required this.icon,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemsDetails(
              id: this.id,
              name: this.name,
              description: this.description ?? '',
              imageCover: this.imagePath,
              price: this.price.toString(),
            ),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Theme.of(context).dividerColor,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.symmetric(vertical: 15),
        child: ListTile(
          contentPadding: EdgeInsets.all(16),
          title: Text(
            this.name,
            style: GoogleFonts.galindo(
              fontWeight: FontWeight.w500,
              fontSize: 17, // Adjusted font size for readability
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            '${this.price} \$',
            style: GoogleFonts.galindo(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Colors.orange,
            ),
          ),
          leading: Container(
            width: 120,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                this.imagePath,
                fit: BoxFit.cover, // Ensure image covers the container
              ),
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: onPressed,
                icon: icon,
                iconSize: 30,
                color: Colors.white,
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
