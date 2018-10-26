import 'package:flutter_calendar/flutter_calendar.dart';
import 'package:flutter/material.dart';

class CalendarFlutter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget calendrier;
    
    calendrier=new Container(
          margin: new EdgeInsets.symmetric(
            horizontal: 5.0,
            vertical: 10.0,
          ),
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              new Text('Choose your date :'),
              new Calendar(
                isExpandable: true,
              ),
            ]
          )
    );



    return calendrier;
  }

}
