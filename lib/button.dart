import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String number;

  Button(this.number);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
      height: 100,
      child: Text(number,
          style: TextStyle(fontSize: 20,)),
      textColor: Colors.white,
      color: Colors.black26,
      onPressed: (() => Text('message')),
    ));
  }
}