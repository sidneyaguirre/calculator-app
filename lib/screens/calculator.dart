import 'package:flutter/material.dart';

import '../widgets/output.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String result = "";
  String operation = "";
  String operand1 = "";
  String operand2 = "";

void handlePressed(String value){
  print(value);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Output(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button("7"),
                button("8"),
                button("9"),
                button("/"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button("6"),
                button("5"),
                button("4"),
                button("*"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button("3"),
                button("2"),
                button("1"),
                button("-"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button("CL"),
                button("0"),
                button("="),
                button("+"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget button(String value){
    return Expanded(
      child: MaterialButton(
      height: 100,
      child: Text(value,
          style: TextStyle(fontSize: 20,)),
      textColor: Colors.white,
      color: Colors.black26,
      onPressed: (){
        print(value);
      },
    ));
  }
}