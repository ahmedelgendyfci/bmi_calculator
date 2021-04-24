import 'dart:math';

class CalculateBMI {
  int weight;
  int height;

  double bmi;

  CalculateBMI({this.weight, this.height});

  String calculateResult() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'OverWeight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight, Try to exercise more.';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight, Good job!';
    } else {
      return 'You have a lower than normal body weight, You can eat a bit more.';
    }
  }
}
