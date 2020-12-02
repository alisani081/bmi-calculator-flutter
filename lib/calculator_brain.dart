import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obesity';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'You\'ve a higher than overweight body. You need to see a doctor.';
    } else if (_bmi >= 25) {
      return 'You\'ve a higher than normal body. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You\'ve a normal body weight. Good job!';
    } else {
      return 'You\'ve a lower than normal body weight. You can eat a bit more.';
    }
  }
}
