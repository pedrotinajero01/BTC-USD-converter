import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'DollarResultsScreen.dart';
import 'Utilities/tools.dart';

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
          key: Key('dTB'),
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  TextFormField(
                      key: Key('usdText'),
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                      ],
                      validator: (userDollars) {
                        if (userDollars == null || userDollars.isEmpty) {
                          return 'No Dollars to convert!';
                        }
                        bitcoins = double.parse(userDollars);
                        return null;
                      }),
                  RaisedButton(
                      key: Key('usdConvert'),
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
          ]),
        ));
  }
}
