import 'package:flutter/material.dart';

import '../../Utils/cust_bar.dart';
import '../../Utils/cust_drawer.dart';

import '../../Utils/text_affichage.dart';

class RecapPage extends StatelessWidget {

  Widget build(BuildContext context) {
    Widget recapPage;
    double size;
    size=20.0;

    recapPage=new Scaffold(
      appBar: PreferredSize(
        preferredSize: new Size(20.0, 60.0),
        child: new CustBar("TravelBuddy",30.0),
      ),
      drawer: new CustDrawer(),
      body: new Container(
        
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new TextAffichage(Colors.black, 'Your visit :', 25.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new TextAffichage(Colors.red,'City : ',size),
                new TextAffichage(Colors.red,'Paris',size),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new TextAffichage(Colors.red,'Date : ',size),
                 new TextAffichage(Colors.red,'12/12/2012',size),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new TextAffichage(Colors.red,'Prix : ',size),
                 new TextAffichage(Colors.red,'12€',size),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new TextAffichage(Colors.red,'Activity : ',size),
                 new TextAffichage(Colors.red,'Museum',size),
              ],
            ),
          ],
        )
      )

    );

    return recapPage;
  }

     
}