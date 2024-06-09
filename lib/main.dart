import 'package:dio/dio.dart';
import 'package:first_project/components/feed_back.dart';
import 'package:first_project/components/machine_button.dart';
import 'package:first_project/components/object_detection_letter.dart';
import 'package:first_project/components/object_detection_num.dart';
import 'package:first_project/components/settings.dart';
import 'package:first_project/components/userProfile.dart';
import 'package:first_project/forget_password/forget_password.dart';
import 'package:first_project/forget_password/new_password.dart';
import 'package:first_project/forget_password/verification.dart';
import 'package:first_project/introduction_screens/intro_main.dart';
import 'package:first_project/components/home_layout.dart';
import 'package:first_project/components/home_learning.dart';
import 'package:first_project/components/location_screen.dart';
// import 'package:first_project/components/object_detection.dart';
import 'package:first_project/login/login_form.dart';
import 'package:first_project/login/login_machine.dart';
import 'package:first_project/login/login_screen.dart';
import 'package:first_project/components/project_theme_data.dart';
import 'package:first_project/providers/settings_provider.dart';
import 'package:first_project/register/presentation/view/register_form.dart';
import 'package:first_project/register/presentation/view/register_machine.dart';
import 'package:first_project/register/presentation/view/register_screen.dart';
import 'package:first_project/components/splash_screen.dart';
import 'package:first_project/store/cart_page.dart';
import 'package:first_project/store/models/shop.dart';
import 'package:first_project/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';
void main() async{
  // final dio = Dio();
  //
  //   final response = await dio.get('http://192.168.1.10:8000/api/v1/categories');
  //   print(response);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SettingProvider()),
        // ChangeNotifierProvider(create: (context) => BooksShop()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);

    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
      locale: Locale(provider.currentlocale),
      theme: ProjectThemeData.lightTheme,
      darkTheme: ProjectThemeData.darkTheme,
      themeMode: provider.currentTheme,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        UserProfilePage.routeName: (context) => UserProfilePage(),
        HomeLayout.routeName: (context) => HomeLayout(),
        LocationScreen.routeName: (context) => LocationScreen(),
        HomePage.routeName: (context) => HomePage(),
        LoginScreen.routeName: (context) => LoginScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        LoginForm.routeName: (context) => LoginForm(),
        RegisterForm.routeName: (context) => RegisterForm(),
        Settings.routeName: (context) => Settings(),
        ObjectDetection.routeName: (context) => MachineButton(),
        ObjectDetectionNum.routeName: (context) => MachineButton(),
        LoginMachine.routeName: (context) => LoginMachine(),
        RegisterMachine.routeName: (context) => RegisterMachine(),
        // storeInfo.routeName: (context) => storeInfo(),
        ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),
        Verification.routeName: (context) => Verification(),
        NewPassword.routeName: (context) => NewPassword(),
        FeedBack.routeName: (context) => FeedBack(),
        StoreHome.routeName: (context) => StoreHome(),
        CartPage.routeName: (context) => CartPage(),
        IntroductionScreen.routeName: (context) => IntroductionScreen(),
      },
      initialRoute: SplashScreen.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
