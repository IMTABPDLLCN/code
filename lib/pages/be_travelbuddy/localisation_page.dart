import 'package:flutter/material.dart';

import '../../Utils/cust_bar.dart';
import '../../Utils/menu_button.dart';

class LocalisationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     // TODO: implement build
    return new Scaffold(
        appBar: PreferredSize(
          preferredSize: new Size(20.0, 60.0),
          child: new CustBar(),
        ),
        body: new Container(
          decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Image.jpeg'),
                  fit: BoxFit.cover)
          ),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Material(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(45.0),
                child: new MenuButton('Se Localiser'),
              ),
              new Material(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(45.0),
                child: new MenuButton('Choisir une ville'),
              ),
            ],
          )        
        )
    );
  }
  
  

    
}