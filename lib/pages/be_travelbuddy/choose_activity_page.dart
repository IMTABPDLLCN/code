import 'package:flutter/material.dart';

import '../../Utils/cust_bar.dart';
import '../../Utils/cust_drawer.dart';
import '../../Utils/text_affichage.dart';
import '../../Utils/text_input.dart';
import '../../Utils/done_button.dart';

import './recap_page.dart';

class ChooseActivityPage extends StatelessWidget {


  Widget build(BuildContext context) {
    Widget page;

    page = new Scaffold(
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
              new TextAffichage(Colors.black,"what kind of activity do you propose to do ?", 20.0),
              new TextInput(),
              new DoneButton(new MaterialPageRoute(builder: (BuildContext context) => new RecapPage()))
              ],)
        )
      );

    return page;

  }


}