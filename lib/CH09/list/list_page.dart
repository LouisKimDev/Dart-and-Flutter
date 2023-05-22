import 'package:flutter/material.dart';

class ListViewHomePage extends StatelessWidget {
  const ListViewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return HeaderWidget();
              } else if (index >= 1 && index <= 3) {
                return CardTileWidget(index: index);
              } else {
                return RowWidget(index: index);
              }
            }),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.0),
      height: 120.0,
      child: Card(
          elevation: 8.0,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Barista',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 48.0,
                    color: Colors.orange,
                  )),
              Text('Travel Plans',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ))
            ],
          )),
    );
  }
}

class CardTileWidget extends StatelessWidget {
  const CardTileWidget({super.key, @required this.index});
  final index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.flight,
          size: 48.0,
          color: Colors.lightBlue,
        ),
        title: Text('Airplane $index'),
        subtitle: Text('Very Cool'),
        trailing: Text(
          '${index * 7}%',
          style: TextStyle(color: Colors.lightBlue),
        ),
        onTap: () {
          print('Tapped on Row $index');
        },
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({super.key, @required this.index});
  final index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          Icons.directions_car,
          size: 40.0,
          color: Colors.lightGreen,
        ),
        title: Text('Car $index'),
        subtitle: Text('Very Cool'),
        trailing: (index % 3).isEven
            ? Icon(Icons.bookmark_border)
            : Icon(Icons.bookmark),
        selected: false,
        onTap: () {
          print('Tapped on Row $index');
        });
  }
}
