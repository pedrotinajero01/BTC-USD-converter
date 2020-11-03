import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Utilities/tools.dart';

class DollarResultsScreen extends StatefulWidget {
  @override
  _DollarResultsScreenState createState() => _DollarResultsScreenState();
}

class _DollarResultsScreenState extends State<DollarResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dollar Conversion'),
      ),
      body: Container(
        width: 500.0,
        height: 700.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.imgur.com/T3NXyaf.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ConversionTools.string2(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 28.0),
              key: Key('usdResult'),
            ),
          ],
        ),
      ),
    );
  }
}
