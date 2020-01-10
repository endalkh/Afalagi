
import 'package:delalaw/pages/home/home.dart';
import 'package:delalaw/pages/chats/chat_list.dart';
import 'package:delalaw/pages/chats/chats.dart';
import 'package:delalaw/pages/dialog/info_dialogBank.dart';
import 'package:delalaw/pages/home/homeCatagory/CatagoryWithSilverBar.dart';
import 'package:delalaw/pages/login/signin.dart';
import 'package:delalaw/pages/notification/NotificationScreen.dart';
import 'package:delalaw/pages/payment/payment.dart';
import 'package:delalaw/pages/profile/Profile.dart';
import 'package:delalaw/pages/register/signup.dart';
import 'package:delalaw/pages/settings/settings.dart';
import 'package:delalaw/pages/splash/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'constants/constants.dart';
import 'pages/about/about.dart';
import 'pages/post/Post.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
   build(context) {

    return MaterialApp(initialRoute:SPLASH_SCREEN, routes: {
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
//      DIALOGE_PAGE:(context)=>DialogsPage(),
      PROFILE:(context)=>ProfileOnePage(),
      ABOUT_US:(context)=>AboutScreen(),
      PAYMENT:(context)=>Payment(),
//      APP:(context)=>App(),
//      "MessageScreen":(context)=>AboutScreen(),

    });
  }
}
