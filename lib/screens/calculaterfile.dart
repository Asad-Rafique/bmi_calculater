import 'dart:math';

class calculater_brain {
  final int height;
  final int weight;
  late double _bmi;

  calculater_brain({required this.height, required this.weight}) {
    _bmi = _calculateBMI();
  }

  double _calculateBMI() {
    return weight / pow(height / 100, 2);
  }

  String calculate_bmi() {
    return _bmi.toStringAsFixed(1);
  }

  String get_result() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.0) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String get_interpritation() {
    if (_bmi >= 25) {
      return "You have a normal body weight. Try to exercise more.";
    } else if (_bmi > 18.0) {
      return "You have a Normal body weight. Good job!";
    } else {
      return "You have lower than normal weight. You can eat a bit more.";
    }
  }
}
