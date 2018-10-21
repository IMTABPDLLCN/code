import 'package:flutter/material.dart';

class DoneButton extends StatelessWidget {

  final MaterialPageRoute page;
  final double buttonsize;

  DoneButton(this.page, this.buttonsize);

  @override
  Widget build(BuildContext context) {
    Widget button;

    button = new Container(
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red
      ),
      child: new IconButton(
        iconSize: this.buttonsize,
        color: Colors.white,
        icon: Icon(Icons.done),
        onPressed: () => Navigator.of(context).push(this.page),
      )
    );

    return button;

  }

}