import 'package:flutter/material.dart';
import 'package:calculator_app/calculator.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,

      home: CalculatorHome(),


    );
  }
}
