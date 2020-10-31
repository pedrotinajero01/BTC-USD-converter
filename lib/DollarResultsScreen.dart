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
      body: Column(
        children: [
          Text(
            ConversionTools.string2(),
          ),
        ],
      ),
    );
  }
}
