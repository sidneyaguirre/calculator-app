import 'package:flutter/material.dart';

import '../operations/operations.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = "0";
  String operation = "";
  String firstOperand = "";
  String secondOperand = "";

  void resetState() {
    setState(() {
      output = "0";
      operation = "";
      firstOperand = "";
      secondOperand = "";
    });
  }

  void handlePressed(String value) {
    switch (value) {
      case "/":
        setState(() {
          operation = value;
          output = output + value;
        });
        break;
      case "*":
        print('multi');
        setState(() {
          operation = value;
          output = output + value;
        });
        break;
      case "-":
        print('minus');
        setState(() {
          operation = value;
          output = output + value;
        });
        break;
      case "+":
        print('adding');
        setState(() {
          operation = value;
          output = output + value;
        });
        break;
      case "CL":
        print('clear');
        resetState();
        break;
      case "=":
        print(firstOperand + " " + operation + " " + secondOperand);
        setState(() {
          output = operate(firstOperand, secondOperand, operation);
        });
        if (output != "Syntax Error") {
          setState(() {
            firstOperand = output;
            secondOperand = "";
            operation = "";
          });
        }
        break;
      default:
        if (operation == "") {
          setState(() {
            firstOperand = firstOperand + value;
            output = value;
          });
        } else {
          setState(() {
            secondOperand = secondOperand + value;
            output = output + value;
          });
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Integer Calculator')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              alignment: Alignment.bottomRight,
              height: 150,
              margin: const EdgeInsets.all(10.0),
              child: Text(
                output,
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
            ),
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

  Widget button(String value) {
    return Expanded(
        child: MaterialButton(
            height: 100,
            child: Text(value,
                style: TextStyle(
                  fontSize: 20,
                )),
            textColor: Colors.white,
            color: Colors.black26,
            onPressed: () {
              this.handlePressed(value);
            }));
  }
}
