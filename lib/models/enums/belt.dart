import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Belt {
  white,
  yellow,
  orange,
  green,
  brown,
  black,
}
extension BeltExtension on Belt {
  Color get beltColor {
    switch(this) {
      case Belt.white:
        return Colors.white;
      case Belt.yellow:
        return Colors.yellow;
      case Belt.orange:
        return Colors.deepOrange;
      case Belt.green:
        return Colors.green;
      case Belt.brown:
        return Colors.brown;
      case Belt.black:
        return Colors.black;
    }
  }

  Color get alternateColor {
    switch(this) {
      case Belt.white:
        return Colors.black;
      case Belt.yellow:
        return Colors.black;
      case Belt.orange:
        return Colors.black;
      case Belt.green:
        return Colors.black;
      case Belt.brown:
        return Colors.white;
      case Belt.black:
        return Colors.white;
    }
  }

  String get beltName {
    switch(this) {
      case Belt.white:
        return "White";
      case Belt.yellow:
        return "Yellow";
      case Belt.orange:
        return "Orange";
      case Belt.green:
        return "Green";
      case Belt.brown:
        return "Brown";
      case Belt.black:
        return "Black";
    }
  }
}