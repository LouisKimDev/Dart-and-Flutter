import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String inputString;
  final double fontSize;
  final Color fontColor;
  final bool isUnderlined;
  final bool isBold;
  final bool isItalic;

  const TextContainer({
    required this.inputString,
    required this.fontSize,
    required this.fontColor,
    required this.isUnderlined,
    required this.isBold,
    required this.isItalic,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.lightGreen.shade200,
        height: 150,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            inputString,
            style: TextStyle(
              fontSize: fontSize,
              color: fontColor,
              decoration: isUnderlined ? TextDecoration.underline : TextDecoration.none,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}
