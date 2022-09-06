// ignore_for_file: file_names
import 'dart:math';

class CalculateResult {
  final int height;
  final int weight;

  CalculateResult({required this.height, required this.weight});

  double result = 0;

  String calculateResult() {
    result = weight / pow(height / 100, 2);
    return result.toStringAsFixed(1);
  }

  getDes() {
    if (result >= 18.5 && result <= 25) {
      return " \n NORMAL \n\n  \n\n you're in the healthy weight range.";
    } else if (result > 25 && result <= 30) {
      return " \n OVERWEIGHT \n\n  \n\n you're in the overweight range";
    } else if (result > 30) {
      return " \n OBESITY  \n\n  \n\n  you're in the obese range.";
    } else {
      return " \n UNDER WEIGHT \n\n  \n\n you're in the Underweight range";
    }
  }
}
