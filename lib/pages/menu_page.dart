import 'package:flutter/material.dart';

import '../pages/be_travelbuddy/localisation_page.dart';
import '../pages/be_travelbuddy/choose_date_page.dart';

import '../Utils/menu_button.dart';
import '../Utils/cust_drawer.dart';
import '../Utils/cust_bar.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: new Size(20.0, 60.0),
        child: new CustBar("TravelBuddy",30.0),
      ),
      drawer: new CustDrawer(),
      body: new Container(
          decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Image.jpeg'),
                  fit: BoxFit.cover)),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new MenuButton('Visites',null,Colors.red),
              new MenuButton('Be a TravelBuudy',null, Colors.red),
              new MenuButton('Search a TravelBuudy',null, Colors.red)
            ],
          )
        ),
    );
  }
}
