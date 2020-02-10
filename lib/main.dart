import 'package:flutter/material.dart';

import './calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx){
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Calculator App',
      home: Calculator(),
    );
  }
}

