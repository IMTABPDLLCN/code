import 'package:flutter/material.dart';

import './identification_page.dart';

import '../Utils/bar.dart';

class AccueilPage extends StatelessWidget {
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
        backgroundColor: Colors.purpleAccent,
        body: new Material(
          color: Colors.white,
          child: new InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new IdentificationPage() )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  child: new Image.asset('assets/images/TravelBuddyLogo.png'),
                ), 
                new Text(
                  "Hi, welcome of on the TravelBuddy world !",
                  style: TextStyle(
                      color: Colors.purpleAccent,
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                ),
                new Text(
                  "Now you're a member of this big familly so you can share and discover with some other TravelBuddy.",
                  style: TextStyle(
                      color: Colors.purpleAccent,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ));
  }
}
