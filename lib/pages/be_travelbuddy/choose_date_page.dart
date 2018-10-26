import 'package:flutter/material.dart';


import '../../Utils/cust_bar.dart';
import '../../Utils/cust_drawer.dart';
import '../../Utils/text_affichage.dart';
import '../../Utils/text_input.dart';
import '../../Utils/calendrier.dart';
import '../../Utils/done_button.dart';

import '../be_travelbuddy/choose_price.dart';

class ChooseDatePage extends StatelessWidget {


  Widget build(BuildContext context) {
    Widget page;

    page = new Scaffold(
      appBar: PreferredSize(
        preferredSize: new Size(20.0, 60.0),
        child: new CustBar("TravelBuddy",30.0),
      ),
      drawer: new CustDrawer(),
      body: new Column(
        children: <Widget>[
           new CalendarFlutter(),
           new DoneButton(new MaterialPageRoute(builder: (BuildContext context) => new ChoosePricePage()))
        ],
      )
          
         
      );

    return page;

  }


}