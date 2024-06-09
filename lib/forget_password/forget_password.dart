import 'package:dio/dio.dart';
import 'package:first_project/components/custom_text_form.dart';
import 'package:first_project/data/repository/forgotPassword.dart';
import 'package:first_project/forget_password/verification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ForgetPasswordScreen extends StatelessWidget {
  static const String routeName = "forget_password";

  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  ForgetPasswordScreen({Key? key}) : super(key: key);

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
                  Icons.email_outlined,
                  color: Colors.white,
                  size: 50,
                ),
              ],
            ),
            backgroundColor: Theme.of(context).dividerColor,
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
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
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("images/forgetpassword1.png"),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 6, bottom: 45),
                  alignment: Alignment.center,
                  child: Text(
                    "Please enter your email address to receive a verification code",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.galindo(
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomeTextForm(
                      label: "Email Address",
                      controller: emailController,
                      myValidator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please enter email address';
                        }
                        bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(text);
                        if (!emailValid) {
                          return 'Please enter valid email';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: ()async {
                          if (formKey.currentState!.validate()) {
                           final  response =await ForgotPasswordApiService.Forgot(emailController.text,context) ;

                           Navigator.pushNamed(
                              context,
                              Verification.routeName,
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).dividerColor,
                        ),
                        child: Text(
                          "Send",
                          style: GoogleFonts.galindo(
                            fontWeight: FontWeight.w400,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
