import 'dart:math';

class CalculatorBmi {
  final int height;
  final int weight;

  double _bmi;
  CalculatorBmi({this.height, this.weight});

  String calculateBmi() {
    double bmi = weight / (pow(height / 100, 2));
    _bmi = bmi;
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overvektig';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Undervektig';
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return 'Din BMI er høy! Du burde trene mer og spise mindre.';
    } else if (_bmi > 18.5) {
      return 'Din BMI er normal, dette lover bra!';
    } else {
      return 'Din BMI er for lav. Du burde spise mer!!';
    }
  }
}
