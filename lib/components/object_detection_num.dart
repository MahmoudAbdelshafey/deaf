import 'dart:io';

import 'package:first_project/components/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';

class ObjectDetectionNum extends StatefulWidget {
  static String routeName = 'machine bottom';

  @override
  State<ObjectDetectionNum> createState() => _ObjectDetectionState();
}

class _ObjectDetectionState extends State<ObjectDetectionNum> {
  File? _selectedImage;
  String path= '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          elevation: 0,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.qr_code_scanner_sharp,
                color: Colors.white,
                size: 40,
              ),
            ],
          ),
          backgroundColor: Theme.of(context).dividerColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'images/objectDetection.png',
            scale: 2,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).dividerColor,
            ),
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                GestureDetector(
                  onTap: ()async {
                   await _pickImageFromGallery();
                    if(path.contains('good')){
                      Dialogs.materialDialog(
                          color: Colors.white,
                          msgAlign: TextAlign.center,
                          msg: 'Your word Is : Good',
                          title: 'Success',
                          lottieBuilder: Lottie.asset(
                            'images/confirmed.json',
                            fit: BoxFit.contain,
                          ),
                          context: context,
                          actions: [
                            IconsButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              text: 'Confirm',
                              iconData: Icons.done,
                              color: Colors.green,
                              textStyle: TextStyle(color: Colors.white),
                              iconColor: Colors.white,
                            ),
                          ]);
                    }
                    else if( path.contains('excuse_me')){
                      Dialogs.materialDialog(
                          color: Colors.white,
                          msgAlign: TextAlign.center,
                          msg: 'Your Letter Is : excuse_me ',
                          title: 'Success',
                          lottieBuilder: Lottie.asset(
                            'images/confirmed.json',
                            fit: BoxFit.contain,
                          ),
                          context: context,
                          actions: [
                            IconsButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              text: 'Confirm',
                              iconData: Icons.done,
                              color: Colors.green,
                              textStyle: TextStyle(color: Colors.white),
                              iconColor: Colors.white,
                            ),
                          ]);
                    }else if( path.contains('dont_like')){
                      Dialogs.materialDialog(
                          color: Colors.white,
                          msgAlign: TextAlign.center,
                          msg: 'Your word Is : Dont Like ',
                          title: 'Success',
                          lottieBuilder: Lottie.asset(
                            'images/confirmed.json',
                            fit: BoxFit.contain,
                          ),
                          context: context,
                          actions: [
                            IconsButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              text: 'Confirm',
                              iconData: Icons.done,
                              color: Colors.green,
                              textStyle: TextStyle(color: Colors.white),
                              iconColor: Colors.white,
                            ),
                          ]);
                    }
                    else if( path.contains('bye')){
                      Dialogs.materialDialog(
                          color: Colors.white,
                          msgAlign: TextAlign.center,
                          msg: 'Your word Is : bye ',
                          title: 'Success',
                          lottieBuilder: Lottie.asset(
                            'images/confirmed.json',
                            fit: BoxFit.contain,
                          ),
                          context: context,
                          actions: [
                            IconsButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              text: 'Confirm',
                              iconData: Icons.done,
                              color: Colors.green,
                              textStyle: TextStyle(color: Colors.white),
                              iconColor: Colors.white,
                            ),
                          ]);
                    }else if( path.contains('becareful')){
                      Dialogs.materialDialog(
                          color: Colors.white,
                          msgAlign: TextAlign.center,
                          msg: 'Your word Is : becareful ',
                          title: 'Success',
                          lottieBuilder: Lottie.asset(
                            'images/confirmed.json',
                            fit: BoxFit.contain,
                          ),
                          context: context,
                          actions: [
                            IconsButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              text: 'Confirm',
                              iconData: Icons.done,
                              color: Colors.green,
                              textStyle: TextStyle(color: Colors.white),
                              iconColor: Colors.white,
                            ),
                          ]);
                    }else{
                      Dialogs.materialDialog(
                          color: Colors.white,
                          msgAlign: TextAlign.center,
                          msg: 'Something Wrong',
                          title: 'Failed',
                          lottieBuilder: Lottie.asset(
                            'images/error.json',
                            fit: BoxFit.contain,
                          ),
                          context: context,
                          actions: [
                            IconsButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              text: 'try Again',
                              iconData: Icons.done,
                              color: Colors.red,
                              textStyle: TextStyle(color: Colors.white),
                              iconColor: Colors.white,
                            ),
                          ]);
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).highlightColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          child: Icon(
                            Icons.photo_library,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        const SizedBox(height: 20,),
                        // _selectedImage != null
                        //     ? Image.file(_selectedImage!)
                        //     : const Text(''),
                        Text(
                          "Pick image from gallery",
                          style: GoogleFonts.galindo(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _pickImageFromCamera();
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).highlightColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        const SizedBox(height: 20,),
                        // _selectedImage != null
                        //     ? Image.file(_selectedImage!)
                        //     : const Text(''),
                        Text(
                          "Pick image from camera",
                          style: GoogleFonts.galindo(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage.path);
      path = _selectedImage!.path;
    });
  }

  Future _pickImageFromCamera() async {
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage.path);
    });
  }
}