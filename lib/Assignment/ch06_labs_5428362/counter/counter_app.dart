import 'package:flutter/material.dart';
import 'text_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  MyApp myapp = MyApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.green,
          canvasColor: Colors.amber,
          platform: TargetPlatform.linux),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // stateÍ∞? Î∞îÎ?îÎïå ?óÖ?ç∞?ù¥?ä∏ ?ê®
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _updateSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $_counter times.');
    await prefs.setInt('counter', _counter);
  }

  @override
  Widget build(BuildContext context) {
    _updateSharedPreferences();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You increase of decrease by using button below:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButtonKMU(
              onPressed: () => print("im hit!"),
              buttonText: "Click",
            ),
            TextButtonKMU(
              onPressed: _decrementCounter,
              buttonText: "Decrease",
            ),
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
