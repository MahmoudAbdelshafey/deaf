import 'package:dio/dio.dart';
import 'package:first_project/data/repository/loginApiServices.dart';
import 'package:first_project/forget_password/forget_password.dart';
import 'package:first_project/components/home_learning.dart';
import 'package:first_project/register/presentation/view/register_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/custom_text_form.dart';

class LoginForm extends StatelessWidget {
  static const String routeName = "login-form";

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    // final ApiService apiService = ApiService();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "images/login2.png",
                  scale: 4,
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomeTextForm(
                      label: "Email Address",
                      controller: emailController,
                      myValidator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'please enter email address';
                        }
                        bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(text);
                        if (!emailValid) {
                          return 'please enter valid email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    CustomeTextForm(
                      label: "Password",
                      isPassword: true,
                      controller: passwordController,
                      keyboardType: TextInputType.number,
                      myValidator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'please enter password';
                        }
                        if (text.length < 6) {
                          return 'password must be at least 6 characters!';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: ()async {
                        if (formKey.currentState!.validate()) {
                          // Perform authentication logic here
                          // For example:
                          // String email = emailController.text;
                          // String password = passwordController.text;
                          // Then proceed with the authentication process
                            final response = await ApiService.login(
                                emailController.text, passwordController.text,context);
                        }
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.galindo(
                          fontWeight: FontWeight.w400,
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: Theme.of(context).dividerColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            ForgetPasswordScreen.routeName,
                          );
                        },
                        child: Text(
                          "Forget Password?",
                          style: GoogleFonts.gelasio(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).textTheme.bodySmall!.color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).textTheme.bodySmall!.color,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (_) => RegisterForm(),
                              ),
                                  (route) => false,
                            );
                          },
                          child: Text(
                            "Signup",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color:
                                  Theme.of(context).textTheme.bodySmall!.color,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
