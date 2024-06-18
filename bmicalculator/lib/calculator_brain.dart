import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresulttext() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretationtext() {
    if (_bmi >= 30) {
      return 'You may need to get a regular exercise and loose a plenty of weight.';
    } else if (_bmi >= 25) {
      return 'You have a higher than a normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good to see you fit! ';
    } else {
      return 'You have a low body weight. Try to consume more calories. ';
    }
  }
}
