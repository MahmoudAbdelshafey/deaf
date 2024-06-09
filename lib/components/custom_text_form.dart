import 'package:flutter/material.dart';

typedef Validator = String? Function(String?);

class CustomeTextForm extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool isPassword;
  final TextEditingController controller;
  final Validator myValidator;

  CustomeTextForm({
    required this.label,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    required this.controller,
    required this.myValidator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 4,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 4,
            ),
          ),
        ),
        keyboardType: keyboardType,
        obscureText: isPassword,
        controller: controller,
        validator: myValidator,
      ),
    );
  }
}
