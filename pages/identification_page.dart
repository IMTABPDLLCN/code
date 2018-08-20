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
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
        ),
        body: new Container(
          decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Paris.jpg'),
                  fit: BoxFit.cover)),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new InkWell(
                    onTap: () => print('Tu as pressé sur Facebook'),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          child: Image.asset(
                            'assets/images/facebook.png',
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                        new Text('Facebook')
                      ],
                    ),
                  ),
                  new InkWell(
                    //splashColor: Colors.white,
                    onTap: () => print('Tu as pressé sur Google'),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          child: Image.asset(
                            'assets/images/google.png',
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                        new Text('Google')
                      ],
                    ),
                  ),
                ],
              ),
              new Container(
                child: new TextField(),
              ),
              new Container(
                child: new TextField(),
              ),
              new Container(
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purpleAccent,
                  ),
                  child: new IconButton(
                    iconSize: 60.0,
                    color: Colors.white,
                    onPressed: () => Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (BuildContext context) => new MenuPage())),
                    icon: Icon(
                      Icons.done,
                    ),
                  )),
              new Container(
                  child: new ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Material(
                    borderRadius: BorderRadius.circular(45.0),
                    child: new RaisedButton(
                        onPressed: () =>
                            print('Tu as pressé sur Mot de passe oublié'),
                        color: Colors.redAccent,
                        child: new Text(
                          'Mot de passe oublié',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  new Material(
                    borderRadius: BorderRadius.circular(45.0),
                    child: new RaisedButton(
                        onPressed: () => print('Tu as pressé sur Sign in'),
                        color: Colors.purpleAccent,
                        child: new Text(
                          'Sign in',
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
