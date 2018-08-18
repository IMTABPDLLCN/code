import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new AppBar(
          title: new Text(
            "TravelBuddy",
            style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
        );
  }
}
