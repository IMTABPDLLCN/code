import 'package:flutter/material.dart';

import '../Utils/menu_button.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "TravelBuddy",
          style: TextStyle(
              color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: new Material(
          child: new Column(
        children: <Widget>[
          new MenuButton('Visites'),
          new MenuButton('Be a TravelBuddy'),
          new MenuButton('Search a TravelBuddy'),
          new MenuButton('Messages'),
          new MenuButton('Profil'),
          new MenuButton('Parametre'),
          new Container(
            child: Image.asset('assets/images/fond_ecran.jpg'),
          ),
          )
        ],
      )),
    );
  }
}
