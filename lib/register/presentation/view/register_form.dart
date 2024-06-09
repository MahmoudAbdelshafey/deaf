import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_project/components/custom_text_form.dart';
import 'package:first_project/login/login_screen.dart';
import 'package:first_project/register/data/repository/registerRepo.dart';

class RegisterForm extends StatelessWidget {
  static const String routeName = "register-form";

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "images/signup5.png",
                    scale: 2.5,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomeTextForm(
                      label: "User Name",
                      controller: nameController,
                      myValidator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please enter user name';
                        }
                        return null;
                      },
                    ),
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
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    CustomeTextForm(
                      label: "Password",
                      isPassword: true,
                      controller: passwordController,
                      keyboardType: TextInputType.number,
                      myValidator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please enter password';
                        }
                        if (text.length < 6) {
                          return 'Password must be at least 6 characters';
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
                          return 'Please enter confirmation password';
                        }
                        if (text != passwordController.text) {
                          return "Passwords don't match";
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: ElevatedButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            await RegisterApiServices.register(
                              nameController.text,
                              emailController.text,
                              passwordController.text,
                              confirmPasswordController.text,
                              context,
                            );
                          }
                        },
                        child: Container(
                          height: 50,
                          child: Text(
                            "Register",
                            style: GoogleFonts.galindo(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).highlightColor,
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (_) => LoginScreen(),
                              ),
                                  (route) => false,
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).textTheme.bodySmall!.color,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
