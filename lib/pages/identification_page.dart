import 'package:flutter/material.dart';

import '../Utils/cust_bar.dart';
import '../Utils/done_button.dart';
import '../Utils/text_affichage.dart';


import './menu_page.dart';

class IdentificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: PreferredSize(
          preferredSize: new Size(20.0, 60.0),
          child: new CustBar("TravelBuddy",30.0),
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
                            width: 80.0,
                            height: 80.0,
                          ),
                        ),
                        new TextAffichage(Colors.black,'Connect using Facebook',16.0),
                      ],
                    ),
                  ),
                  new InkWell(
                    onTap: () => print('Tu as pressé sur Google'),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          child: Image.asset(
                            'assets/images/google.png',
                            width: 80.0,
                            height: 80.0,
                          ),
                        ),
                        new TextAffichage(Colors.black,'Connect using Google',16.0),
                      ],
                    ),
                  ),
                ],
              ),
              DoneButton(new MaterialPageRoute(
                builder: (BuildContext context) => new MenuPage()
              )
              ),            
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
