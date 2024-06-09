import 'package:first_project/data/repository/verifyRepo.dart';
import 'package:first_project/forget_password/new_password.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore: must_be_immutable
class Verification extends StatelessWidget {
  static const String routeName = "verification";

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
                Icons.password,
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
                child: Image.asset("images/verify.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 45),
                alignment: Alignment.center,
                child: Text(
                  "Please enter the 6 digit code",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.galindo(
                    fontWeight: FontWeight.w400,
                    fontSize: 19,
                    color: Theme.of(context).textTheme.bodySmall!.color,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25, bottom: 50),
                child: PinCodeTextField(
                  validator: (value) {
                    if (value!.trim().length != 6) {
                      return 'Please enter data';
                    }
                    return null;
                  },
                  controller: nameController,
                  appContext: context,
                  length: 6,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    print(value);
                  },
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      inactiveColor: Colors.black,
                      activeColor: Colors.green[900]),
                ),
              ),
              ElevatedButton(
                  onPressed: ()async {
                    if (formKey.currentState!.validate()) {
                      await VerifyCodeApiService.verify( nameController.text,context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).dividerColor),
                  child: Text(
                    "Verify",
                    style: GoogleFonts.galindo(
                        fontWeight: FontWeight.w400,
                        fontSize: 28,
                        color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
