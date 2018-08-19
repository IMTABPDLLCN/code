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
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
              child: new Text('Hi Basile I hope you enjoy TravelBuddy'),
            ),
            new ListTile(
              leading: new Icon(Icons.add_circle_outline),
              title: new Text('Visites'),
              onTap: () => print('Tu as clic'),
            ),
            new ListTile(
              leading: new Icon(Icons.add_circle_outline),
              title: new Text('Be a TravelBuddy'),
              onTap: () => print('Tu as clic'),
            ),
            new ListTile(
              leading: new Icon(Icons.add_circle_outline),
              title: new Text('Search a TravelBuddy'),
              onTap: () => print('Tu as clic'),
            ),
            new ListTile(
              leading: new Icon(Icons.add_circle_outline),
              title: new Text('Message'),
              onTap: () => print('Tu as clic'),
            ),
            new ListTile(
              leading: new Icon(Icons.add_circle_outline),
              title: new Text('Profil'),
              onTap: () => print('Tu as clic'),
            ),
            new ListTile(
              leading: new Icon(Icons.add_circle_outline),
              title: new Text('Paramètres'),
              onTap: () => print('Tu as clic'),
            ),
          ],
        ),
      ),
      body: new Container(
          decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Image.jpeg'),
                  fit: BoxFit.cover)),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new MenuButton('Be a TravelBuddy'),
              new MenuButton('Search a TravelBuddy'),
            ],
          )),
    );
  }
}
