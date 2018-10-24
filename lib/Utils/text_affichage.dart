import 'package:flutter/material.dart';

class TextAffichage extends StatelessWidget {

  final Color color;
  final String text;
  final double size;


  TextAffichage(this.color, this.text, this.size);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(45.0),
      child: new Text(
        text,
        style: TextStyle(
            color: this.color,
            fontSize: size,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
