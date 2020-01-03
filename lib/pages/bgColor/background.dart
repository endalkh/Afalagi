
import 'package:delalaw/pages/widgets/custom_shape.dart';
import 'package:delalaw/pages/widgets/responsive_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background {
  static double _height;
  static double _width;
  static double _pixelRatio;
  static bool _large;
  static bool _medium;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

    static clipShape(BuildContext context) {
      _height = MediaQuery
          .of(context)
          .size
          .height;
      _width = MediaQuery
          .of(context)
          .size
          .width;
      _pixelRatio = MediaQuery
          .of(context)
          .devicePixelRatio;
      _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
      _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    return Stack(

      children: <Widget>[

        Opacity(
          opacity: 0.75,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height:_large? _height/8 : (_medium? _height/8 : _height),
              decoration: BoxDecoration(
                gradient: LinearGradient(
//                  colors: [Colors.orange[200], Colors.white],
                    colors: [Colors.blue,Colors.white]
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: CustomShapeClipper2(),
            child: Container(
              height: _large? _height/8: (_medium? _height/8 : _height),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black,Colors.blue]
                ),
              ),
            ),
          ),
        ),


      ],

    );

  }
}