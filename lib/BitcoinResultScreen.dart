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
      body: Column(
        children: [
          Text(
            ConversionTools.string1(),
          ),
        ],
      ),
    );
  }
}
