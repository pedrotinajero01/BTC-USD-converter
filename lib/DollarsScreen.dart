import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'DollarResultsScreen.dart';

class DollarsScreen extends StatefulWidget {
  @override
  _DollarsScreenState createState() => _DollarsScreenState();
}

class _DollarsScreenState extends State<DollarsScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dollars to Bitcoin'),
        ),
        body: Column(children: [
          Form(
              key: _formKey,
              child: Column(children: <Widget>[
                TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Text is empty';
                      }
                      return null;
                    }),
                RaisedButton(
                    child: Text('Convert to Bitcoins'),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DollarResultsScreen()));
                      }
                    }),
              ]))
        ]));
  }
}
