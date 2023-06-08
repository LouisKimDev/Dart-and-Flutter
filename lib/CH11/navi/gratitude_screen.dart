import 'package:flutter/material.dart';

class GratitudeScreen extends StatefulWidget {
  const GratitudeScreen({super.key});

  @override
  State<GratitudeScreen> createState() => _GratitudeScreenState();
}

class _GratitudeScreenState extends State<GratitudeScreen> {
  int? _radioGroupValue;
  List<String> _gratitudeList = [];
  String? _selectedGratitude;

  void _radioOnChanged(int? index) {
    setState(() {
      _radioGroupValue = index!;
      _selectedGratitude = _gratitudeList[index];
      print('_selectedRadioValue $_selectedGratitude');
    });
  }

  @override
  void initState() {
    super.initState();
    _gratitudeList
      ..add('Family')
      ..add('Friends')
      ..add('Coffe');
    _radioGroupValue = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gratitude'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () => Navigator.pop(context, _selectedGratitude),
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            RadioMenuButton(
              value: 0,
              groupValue: _radioGroupValue,
              onChanged: _radioOnChanged,
              child: Text('Family'),
            ),
            RadioMenuButton(
              value: 1,
              groupValue: _radioGroupValue,
              onChanged: _radioOnChanged,
              child: Text('Friends'),
            ),
            RadioMenuButton(
              value: 2,
              groupValue: _radioGroupValue,
              onChanged: _radioOnChanged,
              child: Text('Coffee'),
            ),
          ],
        ),
      )),
    );
  }
}
