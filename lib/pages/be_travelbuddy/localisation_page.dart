import 'package:flutter/material.dart';

import './choose_date_page.dart';

import '../../Utils/cust_bar.dart';
import '../../Utils/localisation.dart';
import '../../Utils/done_button.dart';
import '../../Utils/text_affichage.dart';
import '../../Utils/text_input.dart';

import '../../object/visite.dart';


class LocalisationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     // TODO: implement build
    return new Scaffold(
        appBar: PreferredSize(
          preferredSize: new Size(20.0, 60.0),
          child: new CustBar("Be a TravelBuddy",25.0),
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
              new CurrentLocationWidget(),
              new DoneButton(new MaterialPageRoute(
                builder: (BuildContext context) => new ChooseDatePage()
              ))
            ],
          )
        )
    );
  }
  
  

    
}