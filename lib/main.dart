import 'package:flutter/material.dart';
import 'DollarsScreen.dart';
import 'BitcoinScreen.dart';
import 'BitcoinResultScreen.dart';
import 'DollarResultsScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BTC-USD Conversion App',
      home: MyHomePage(title: 'BTC-USD Conversion'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                key: Key('usdButton'),
                child: Text('USD to BTC'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DollarsScreen()));
                }),
            RaisedButton(
                key: Key('btcButton'),
                child: Text('BTC to USD'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BitcoinScreen()));
                }),
          ],
        ),
      ),
    );
  }
}
