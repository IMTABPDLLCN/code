import 'package:flutter/material.dart';

import './text_affichage.dart';

class DoneButton extends StatelessWidget {

  final MaterialPageRoute page;
  

  DoneButton(this.page,);

  @override
  Widget build(BuildContext context) {
    Widget button;

    button = new Container(
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new IconButton(
            iconSize: 65.0,
            color: Colors.white,
            icon: Icon(Icons.done),
            onPressed: () => Navigator.of(context).push(this.page),
          ),
          new TextAffichage(Colors.black,'Next Page',15.0)
        ],
      )
    );

    return button;

  }

}