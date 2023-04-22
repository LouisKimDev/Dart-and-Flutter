import 'package:flutter/material.dart';

// stless 또는 stfull입력시 자동 생성
// 제목 바꾸려면 드래그 후 F2누르면 다같이 바뀜
class TextButtonKMU extends StatelessWidget {
  // two instance variables
  final GestureTapCallback onPressed;
  String buttonText = "Button";

  TextButtonKMU({required this.onPressed, required this.buttonText});

  // constructor
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.onPressed,
      splashColor: Colors.amber,
      fillColor: Colors.blue,
      shape: StadiumBorder(),
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
