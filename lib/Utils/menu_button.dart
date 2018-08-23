import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  
  final String text;
  final MaterialPageRoute page;

  MenuButton(this.text,this.page);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(children: <Widget>[
      new InkWell(
        onTap: () =>  (page!=null) ? Navigator.of(context).push(page) : print("pas encore de page"+text),
        child: new Container(
            child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Icon(Icons.add_circle_outline, size: 45.0),
            new Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 27.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        )),
      )
    ]);
  }
}
