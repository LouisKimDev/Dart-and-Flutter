import 'package:flutter/material.dart';

class FontInfo{
  String inputString ;
  Color color;
  double size;

  bool isUnderlined = false;
  bool isBold = false;
  bool isItalic = false;

  FontInfo({
    required this.inputString,
    this.color = Colors.black,
    this.size = 20,
  });
}