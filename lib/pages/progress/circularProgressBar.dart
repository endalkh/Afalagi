 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CircularIndicator (){
  return Center(
      child:Opacity(
        opacity: 0.5,
        child:  CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            strokeWidth: 5.0),
      )

  );

 }