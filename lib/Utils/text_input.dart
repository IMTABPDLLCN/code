import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {

  TextInput();

  @override
  Widget build(BuildContext context) {

    return new Container(
        color: Colors.white,
        child: new TextField(
          autocorrect: false,
          enabled: true,        
        )
    );

  }

}