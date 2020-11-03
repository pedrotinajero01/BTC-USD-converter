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
      key: Key('mainT'),
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
      body: Container(
        width: 500.0,
        height: 700.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://www.wallpaperpimper.com/wallpapers/2sb28c/iphone-xs/bitcoin.jpg"),
            fit: BoxFit.cover,
          ),
        ),
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
