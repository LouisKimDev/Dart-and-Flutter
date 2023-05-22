import 'package:flutter/material.dart';

class LayoutHomePage extends StatelessWidget {
  const LayoutHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          CenterCardPadding(),
        ],
      )),
    );
  }
}

class CenterCardPadding extends StatelessWidget {
  const CenterCardPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.lightBlue,
        child: Padding(
          padding: EdgeInsets.all(100),
          child: Text(
            'child of padding',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class ExpandedFlexiblePositionedWidget extends StatelessWidget {
  const ExpandedFlexiblePositionedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500.0,
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Expand"),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
