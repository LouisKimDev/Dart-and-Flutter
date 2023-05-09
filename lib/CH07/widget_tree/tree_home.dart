import 'package:flutter/material.dart';

class WidgetTreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container container = Container(
      // 만약 extract시 자동 var로 할당되는데 var쓰지말것것
      color: Colors.yellow,
      height: 40.0,
      width: 40.0,
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Tree',
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                firstRow(container: container),
                Divider(),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                          color: Colors.yellow,
                          height: 60.0,
                          width: 60.0,
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                        ),
                        container,
                        Padding(
                          padding: EdgeInsets.all(16.0),
                        ),
                        _buildContainer(20.0, 20.0),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.lightGreen,
                      radius: 100.0,
                      child: Stack(
                        children: <Widget>[
                          _buildContainer(100.0, 100.0),
                          Container(
                            height: 60.0,
                            width: 60.0,
                            color: Colors.amber,
                          ),
                          container,
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
        ));
  }

  Widget _buildContainer(double h, double w) {
    return Container(
      color: Colors.brown,
      height: h,
      width: w,
    );
  }
}

class firstRow extends StatelessWidget {
  const firstRow({
    super.key,
    required this.container,
  });

  final Container container;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        container,
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Expanded(
            child: Container(
          color: Colors.amber,
          height: 40.0,
          width: 40.0,
        )),
        Padding(padding: EdgeInsets.all(16.0)),
        container,
      ],
    );
  }
}
