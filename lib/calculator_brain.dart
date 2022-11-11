import 'dart:math';

class CalculatorBrain {
  // ♦ Properties:
  final int height;
  final int weight;

  // ♦ Private Property
  //   → Which is Accessible
  //   → Only in the "CalculatorBrain" Class:
  late double _bmi;

  // ♦ Constructor:
  CalculatorBrain({required this.height, required this.weight});

  // ♦♦ The "BMI Calculation" Function:
  String calculateBMI() {
    // ♦ The "BMI Calculation"
    _bmi = weight / pow(height / 100, 2);

    // ♦ The "Conversion" to "String"
    //   → with a "Fixed Number" of "Decimals":
    return _bmi.toStringAsFixed(1);
  }

  // ♦♦ Providing a "Result" → based on the "Results":
  String getResult() {
    // ♦ Checking:
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  // ♦♦ Providing am "Interpretation" → based on "BMI":
  String getInterpretation() {
    // ♦ Checking:
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
