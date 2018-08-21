import 'package:flutter/material.dart';

import './identification_page.dart';

import '../Utils/cust_bar.dart';

class AccueilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: PreferredSize(
        preferredSize: new Size(20.0, 60.0),
        child: new CustBar(),
      ),
        body: new Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/Image.jpeg'))),
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
                new Material(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(45.0),
                  child: new Text(
                    "Hi, welcome of on the TravelBuddy world !",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                new Material( 
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(45.0),
                  child:new Text(
                  " "+" Press to start ..."+" ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ) ,)
                
              ],
            ),
          ),
        ));
  }
}
