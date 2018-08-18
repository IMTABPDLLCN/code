import 'package:flutter/material.dart';

class ButtonConnexion extends StatelessWidget{


  final String outilconnexion;
  final Icon iconconnexion;

  ButtonConnexion(this.outilconnexion, this.iconconnexion);

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Container(
                  child: new Column(
                children: <Widget>[
                  new IconButton(
                    onPressed: () => print('Tu as pressé sur Icon1'),
                    icon: iconconnexion,
                  ),
                  new Text(outilconnexion)
                ],
              ));
    }

}