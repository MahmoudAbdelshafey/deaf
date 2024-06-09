import 'package:first_project/components/custom_text_form.dart';
import 'package:first_project/data/repository/newPassword.dart';
import 'package:first_project/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class NewPassword extends StatelessWidget {
  static const String routeName = "new_password";
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )),
          elevation: 0,
          centerTitle: true,
          title: Column(
            children: [
              Icon(
                Icons.pending,
                color: Colors.white,
                size: 50,
              ),
            ],
          ),
          backgroundColor: Theme.of(context).highlightColor,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: mediaQuery.height * 0.10,
            width: mediaQuery.width,
          ),
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Theme.of(context).highlightColor,
                borderRadius: BorderRadius.circular(20)),
            child: Image.asset("images/newPassword.png"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 6, bottom: 10),
            alignment: Alignment.center,
            child: Text(
              "Your New Password Must Be Different from Previously Used Password.",
              textAlign: TextAlign.center,
              style: GoogleFonts.galindo(
                fontWeight: FontWeight.w400,
                fontSize: 19,
                color: Theme.of(context).textTheme.bodySmall!.color,
              ),
            ),
          ),
          Expanded(
            child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    
                    children: [
                      CustomeTextForm(
                        label: " New Password",
                        isPassword: true,
                        controller: passwordController,
                        keyboardType: TextInputType.number,
                        myValidator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return 'please enter password';
                          }
                          if (text.length < 6) {
                            return 'password must beat least 6 chars';
                          }
                          return null;
                        },
                      ),
                      CustomeTextForm(
                        label: "Confirm Password ",
                        isPassword: true,
                        controller: confirmPasswordController,
                        keyboardType: TextInputType.number,
                        myValidator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return 'please enter confirmation password';
                          }
                          if (text != passwordController.text) {
                            return "password doesn't match";
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: ElevatedButton(
                          onPressed: ()async {
                            if (formKey.currentState!.validate()) {
                              await NewpasswordApiService.newpassword(emailController.text,passwordController.text, context);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).highlightColor,
                          ),
                          child: Text(
                            "Save",
                            style: GoogleFonts.galindo(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
