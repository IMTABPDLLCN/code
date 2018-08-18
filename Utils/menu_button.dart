import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String text;

  MenuButton(this.text);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(children: <Widget>[
      new InkWell(
          onTap: () => print("tu as pressé sur " + text),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Icon(Icons.account_balance_wallet, size: 45.0),
              new Text(text,
                  style: TextStyle(color: Colors.purpleAccent, fontSize: 27.0))
            ],
          )),
    ]);
  }
}
