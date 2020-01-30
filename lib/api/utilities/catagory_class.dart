import 'package:flutter/material.dart';

class CatagoryType {
  String name;
  IconData icon;
  Color color;

  CatagoryType(name, icon, color, {onPressed}) {
    this.name = name;
    this.icon = icon;
    this.color = color;
  }
}
