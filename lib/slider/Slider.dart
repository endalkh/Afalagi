import 'package:delalaw/constants/colors.dart';
import 'package:delalaw/pages/swiper/Swiper.dart';
import 'package:flutter/material.dart';

class SlidingCardsView extends StatefulWidget {
  static final String path = "lib/src/pages/onboarding/intro2.dart";
  @override
  _IntroTwoPageState createState() => _IntroTwoPageState();
}

class _IntroTwoPageState extends State<SlidingCardsView> {
  final List<String> titles = [
    "8 Gb Ram\n cor 8 pc  \n amd graphics design . ",
    "8 Gb Ram\n cor 8 pc  \n amd graphics design .",
    "8 Gb Ram\n cor 8 pc  \n amd graphics design ."
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(

      backgroundColor: COLOR_PRIMARY,
      body:SwiperSlide(),
    );
  }



}