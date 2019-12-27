import 'package:addisaba_app/pages/home/home.dart';
import 'package:addisaba_app/pages/home/homeCatagory/home.dart';
import 'package:addisaba_app/pages/login/signin.dart';
import 'package:addisaba_app/pages/register/signup.dart';
import 'package:addisaba_app/pages/splash/splashscreen.dart';
import 'package:flutter/material.dart';
import 'constants/constants.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: SPLASH_SCREEN, routes: {
      SPLASH_SCREEN: (context) => SplashScreen(),
      SIGN_IN: (context) => SignInPage(),
      SIGN_UP: (context) => SignUpScreen(),
      HOME: (context) => Home(),
      HOME_CATAGORY: (context) => HomeCat(),
      SEARCH: (context) => HomeCat(),

    });
  }
}
