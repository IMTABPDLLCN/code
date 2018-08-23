import 'package:flutter/material.dart';

class CustBar extends StatelessWidget {
  
  final String text;
  final double size;

  CustBar(this.text,this.size);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new AppBar(
      title: new Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: size, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.purpleAccent,
    );
  }
}
