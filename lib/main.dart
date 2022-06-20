import 'package:flutter/material.dart';
import 'input_page.dart';
import 'calculator_engine.dart';
import 'package:bmi_calculator/results_page.dart';

void main(){
  runApp(BmiCalculator(),);
}
class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0XFF0A0E21),
          scaffoldBackgroundColor: Color(0XFF0A0E21)
      ),
      home: Input_Page(),
    );
  }
}
