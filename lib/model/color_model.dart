import 'package:flutter/material.dart';

class ColorModel {
  List<Color>? list;

  ColorModel.returnColors() {
    list = [
      Colors.deepOrange,
      const Color(0xFFFABC3C),
      const Color(0xFF83BCFF),
      const Color(0xFF3DDC97),
      Colors.red,
      const Color(0xFF6622CC)
    ];
  }
}
