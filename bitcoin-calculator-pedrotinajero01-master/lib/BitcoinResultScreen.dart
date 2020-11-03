import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Utilities/tools.dart';

class BitcoinResultScreen extends StatefulWidget {
  @override
  _BitcoinResultScreenState createState() => _BitcoinResultScreenState();
}

class _BitcoinResultScreenState extends State<BitcoinResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bitcoin Conversion'),
      ),
      body: Container(
        width: 500.0,
        height: 700.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://s2.best-wallpaper.net/wallpaper/iphone/1808/Bitcoin-money-PCB-creative-design_iphone_750x1334.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ConversionTools.string1(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  backgroundColor: Colors.white,
                  fontSize: 25.0),
              key: Key('bitResult'),
            ),
          ],
        ),
      ),
    );
  }
}
