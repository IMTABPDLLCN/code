import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String text;

  MenuButton(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(children: <Widget>[
      new InkWell(
        onTap: () => print("tu as pressé sur " + text),
        child: new Container(
          //decoration: new BoxDecoration(shape: BoxShape.rectangle,color: Colors.grey[200]),
          child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Icon(Icons.add_circle_outline, size: 45.0),
            new Text(text,
                style: TextStyle(color: Colors.white, fontSize: 27.0 ,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,)
          ],
        )),
      )
    ]);
  }
}
