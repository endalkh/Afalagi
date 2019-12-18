import 'dart:async';
import 'package:addisaba_app/pages/home.dart';
import 'package:addisaba_app/pages/login/login.dart';
import 'package:flutter/material.dart';
import 'package:addisaba_app/pages/navigator/Navigator.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash';
@override
_SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
@override
void initState() {
super.initState();
Timer(Duration(seconds: 5), () =>Navigator.pushNamed(context, LoginPage.id));
}
@override
Widget build(BuildContext context) {
return Scaffold(

body: Stack(
fit: StackFit.expand,
children: <Widget>[
Container(
decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/splash_screen.jpg"),
      fit: BoxFit.cover,
    ),
    color: Colors.blueAccent),
),
Column(
mainAxisAlignment: MainAxisAlignment.start,
children: <Widget>[
Expanded(
flex: 2,
child: Container(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[

Padding(
padding: EdgeInsets.only(top: 10.0),
),
],
),
),
),
Expanded(
flex: 1,
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
CircularProgressIndicator(),
Padding(
padding: EdgeInsets.only(top: 20.0),
),
Text(
"Wait for a moment",
softWrap: true,
textAlign: TextAlign.center,
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 18.0,
color: Colors.white),
)
],
),
)
],
)
],
),
);
}
}