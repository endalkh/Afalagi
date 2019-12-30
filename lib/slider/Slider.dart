import 'dart:async';

import 'package:addisaba_app/pages/utilities/catagories.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  int _currentPage = 0;

  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();


    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 10) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 700),
        curve: Curves.fastOutSlowIn,
      );
    });


  }
  PageController pageController;


  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

   return

     PageView(
        controller: _pageController,
        children: [

          Container(

            child: Card(

                color: Colors.blue.withOpacity(0.2),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child:Padding(
                    padding: EdgeInsets.all(40),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[

    SizedBox(
    child: TypewriterAnimatedTextKit(
    onTap: () {
    print("Tap Event");
    },
      speed:Duration(milliseconds: 100) ,

    text: ["Hp Cor 7 8G Itel Graphics", "Price:400", "1 Year Guarantee"],
    textStyle: TextStyle(
    fontSize: 40.0,
    fontFamily: "Agne",
      color: Colors.white
    ),
    textAlign: TextAlign.start,
    alignment: AlignmentDirectional.topStart,

    ),
    ),
                      ],
                    )
                )
            ),

            decoration: BoxDecoration(

                image: DecorationImage(
                  alignment: Alignment.center,
                  matchTextDirection: true,
                  repeat: ImageRepeat.noRepeat,
                  fit: BoxFit.fill,

                  image: AssetImage("assets/images/mac1.jpg"),
                )
            ),
          ),


        ]


     );


  }
}
