import 'package:flutter/material.dart';

class Output extends StatefulWidget {
  @override
  _OutputState createState() => _OutputState();

/*   Output(String textToDisplay);
 */}

class _OutputState extends State<Output> {

  String text = "0";
  

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      height: 150,
      margin: const EdgeInsets.all(10.0),
      child: Text(
       "0",
        style: TextStyle(
          fontSize: 50,
          color: Colors.white,
        ),
        textAlign: TextAlign.right,
      ),
    );
  }
}
