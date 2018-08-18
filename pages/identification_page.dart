import 'package:flutter/material.dart';

import '../UI/button_connexion.dart';

import './menu_page.dart';

class IdentificationPage extends StatelessWidget {
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
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Container(
                  child: new Column(
                children: <Widget>[
                  new IconButton(
                    onPressed: () => print('Tu as pressé sur Icon1'),
                    icon: Icon(Icons.accessible),
                  ),
                  new Text('Facbebook')
                ],
              )),
              new Container(
                  child: new Column(
                children: <Widget>[
                  new IconButton(
                    onPressed: () => print('Tu as pressé sur Icon2'),
                    icon: Icon(Icons.arrow_forward),
                  ),
                  new Text('Google')
                ],
              )),
            ],
          ),
          new Container(
            child: new TextField(),
          ),
          new Container(
            child: new TextField(),
          ),
          new Container(
              child: new IconButton(
            onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new MenuPage())),
            icon: Icon(Icons.arrow_right),
          )),
          new Container(
              child: new ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new InkWell(
                  onTap: () => print('Tu as pressé sur la tapbar'),
                  child: new Text('Mot de passe oublier')),
              new InkWell(
                onTap: () => print('Tu as pressé sur sinscrire'),
                child: new Text('Sinscrire'),
              )
            ],
          ))
        ],
      ),
    );
  }
}
