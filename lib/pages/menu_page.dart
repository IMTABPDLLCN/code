import 'package:flutter/material.dart';

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
        child: new CustBar(),
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
              new Material(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(45.0),
                child: new MenuButton('Be a TravelBuddy'),
              ),
              new Material(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(45.0),
                child: new MenuButton('Search a TravelBuddy'),
              ),
            ],
          )),
    );
  }
}
