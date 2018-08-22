import 'package:flutter/material.dart';

import './identification_page.dart';

import '../Utils/cust_bar.dart';
import '../Utils/text_affichage.dart';

class AccueilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        //Main de la Page
        appBar: PreferredSize(
          preferredSize: new Size(20.0, 60.0),
          child: new CustBar(),
        ),
        //Barre de l'application
        body: new Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/Image.jpeg'))),
          //Fond d'ecran de l'application
          child: new InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new IdentificationPage())),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Container(
                  child: new Image.asset(
                    'assets/images/TravelBuddyLogo.png',
                    height: 92.0,
                    width: 92.0,
                  ),
                ),
                new TextAffichage(Colors.purpleAccent,
                    "Hi, welcome on the TravelBuddy world", 30.0),
                new TextAffichage(
                    Colors.redAccent, " " + " Press to start " + " ", 30.0),
              ],
            ),
          ),
        ));
  }
}
