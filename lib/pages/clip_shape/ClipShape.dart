import 'package:delalaw/pages/widgets/custom_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ClipShape extends StatefulWidget{
  _ClipShape createState()=>new _ClipShape();

}
class _ClipShape extends State<ClipShape>{
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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

      return Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.75,
            child: ClipPath(
              clipper: CustomShapeClipper(),
              child: Container(
                height:_large? _height/4 : (_medium? _height : _height),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
//                  colors: [Colors.orange[200], Colors.pinkAccent],
                      colors: [Colors.black,Colors.blue]
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
                height: _large? _height : (_medium? _height : _height),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black,Colors.blue]
                  ),
                ),
              ),
            ),
          ),
//        Container(
//          child: SizedBox.expand(child: RadialMenu()),
//
//        ),

        ],
      );

    }
  }


