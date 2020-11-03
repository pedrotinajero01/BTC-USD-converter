import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'BitcoinResultScreen.dart';
import 'Utilities/tools.dart';

class BitcoinScreen extends StatefulWidget {
  @override
  _BitcoinScreenState createState() => _BitcoinScreenState();
}

class _BitcoinScreenState extends State<BitcoinScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bitcoin to Dollars'),
          key: Key('bTD'),
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                      ],
                      validator: (userBitcoins) {
                        if (userBitcoins == null || userBitcoins.isEmpty) {
                          return 'No Bitcoins to convert!';
                        }
                        dollars = double.parse(userBitcoins);
                        return null;
                      }),
                  RaisedButton(
                      child: Text('Convert to Dollars'),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BitcoinResultScreen()));
                        }
                      }),
                ]))
          ]),
        ));
  }
}
