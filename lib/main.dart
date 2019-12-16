import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/login/login.dart';
import 'package:addisaba_app/pages/splash/SplashScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(initialRoute: SplashScreen.id, routes: {
      SplashScreen.id:(context)=>SplashScreen(),
        MyHomePage.id: (context) => MyHomePage(),
        LoginScreen.id: (context) => LoginScreen(),

      },
    );

  }
}

