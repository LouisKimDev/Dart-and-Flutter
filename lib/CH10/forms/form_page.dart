import 'package:flutter/material.dart';
import 'font_info.dart';

class FontHome extends StatefulWidget {
  const FontHome({super.key});

  @override
  State<FontHome> createState() => _FontHomeState();
}

class _FontHomeState extends State<FontHome> {
  GlobalKey<FormState> FormStateKey = GlobalKey<FormState>();
  FontInfo _font = new FontInfo(inputString: "Hello world");

  List<double> _fontSize = [];
  List<String> _fontFamily = [];

  bool _underlineValue = false;
  bool _weightValue = false;
  bool _styleValue = false;
  int _radioGroupValue = 0;

  void initState() {
    super.initState();
    _fontSize
      ..add(45.0)
      ..add(30.0)
      ..add(15.0);
    _fontFamily
      ..add("Serif")
      ..add("Normal");
    _radioGroupValue = 0;
  }

  String _vaildateTextRequired(String value) {
    return value.isEmpty ? 'Text Required' : '';
  }

  void _changeFont() {
    setState(() {
      if (FormStateKey.currentState!.validate()) {
        FormStateKey.currentState!.save();
      }
    });
  }

  Widget _radioWithLabel(int val, String label) {
    return Row(
      children: [
        Radio(
          value: val,
          groupValue: _radioGroupValue,
          onChanged: (index) {
            setState(() {
              _radioGroupValue = index as int;

              ///
              _font.size = _fontSize[index as int];
            });
          },
        ),
        Text(label),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: ,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: FormStateKey,
          autovalidateMode: AutovalidateMode.always,
          onChanged: _changeFont,
          child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Center(
                    child: Card(
                      color: Colors.lightBlue.shade100,
                      child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Text(
                          _font.inputString,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Hello World!',
                      labelText: 'Text',
                    ),
                    validator: (value) => _vaildateTextRequired(value!),
                    onSaved: (value) => _font.inputString = value!,
                    maxLength: 12,
                  ),
                  Row(
                    children: [
                      _radioWithLabel(0, "Small"),
                      _radioWithLabel(1, "Medium"),
                      _radioWithLabel(2, "Large")
                    ],
                  ),
                  DropdownButton(
                    value: _fontFamily[0],
                    items: _fontFamily.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      _font.family = value!;
                      _changeFont();
                    },
                  ),
                ],
              )),
        ),
      )),
    );
  }
}
