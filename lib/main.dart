
import 'package:delalaw/pages/app/home.dart';
import 'package:delalaw/pages/app/homeCatagory/CatagoryWithSilverBar.dart';
import 'package:delalaw/pages/app/homeCatagory/home.dart';
import 'package:delalaw/pages/chats/chat_list.dart';
import 'package:delalaw/pages/chats/chats.dart';
import 'package:delalaw/pages/dialog/Dialog.dart';
import 'package:delalaw/pages/login/signin.dart';
import 'package:delalaw/pages/notification/NotificationScreen.dart';
import 'package:delalaw/pages/profile/Profile.dart';
import 'package:delalaw/pages/register/signup.dart';
import 'package:delalaw/pages/settings/settings.dart';
import 'package:delalaw/pages/splash/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'constants/constants.dart';
import 'pages/about/about.dart';
import 'pages/app/App.dart';
import 'pages/chats/model.dart';
import 'pages/post/Post.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(initialRoute:HOME, routes: {
      SPLASH_SCREEN: (context) => SplashScreen(),
      SIGN_IN: (context) => SignInPage(),
      SIGN_UP: (context) => SignUpScreen(),
      HOME: (context) => Home(),
      SETTING:(context)=>SettingScreen(),
      HOME_CATAGORY:(context)=>SliverAppbarPage(),
      CHAT:(context)=>ChatScreen(),
      CHAT_LIST:(context)=>ChatList(),
      NOTIFIACTION_SCREEN:(context)=>NotificationScreen(),
      POST:(context)=>PostBlog(),
      DIALOGE_PAGE:(context)=>DialogsPage(),
      PROFILE:(context)=>ProfileOnePage(),
      ABOUT_US:(context)=>AboutScreen(),
//      APP:(context)=>App(),
//      "MessageScreen":(context)=>AboutScreen(),

    });
  }
}
