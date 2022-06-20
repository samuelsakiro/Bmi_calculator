import 'package:flutter/material.dart';
import 'dart:math';
import 'input_page.dart';
import 'results_page.dart';



class CalculatorEngine {
  CalculatorEngine({ required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Over Weight';
    }
    else if (_bmi > 18.5) {
      return 'normal';
    }
    else {
      return 'under weight';
    }
  }
  String getInterpretation(){
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to excerise more. ';
    }
    else if (_bmi >= 18.5) {
      return 'You hae a normal body weight. Good job!';
    }
    else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }

  }}