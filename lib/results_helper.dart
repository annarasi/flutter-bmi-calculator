import 'dart:math';
import 'package:bmi_calculator/constants.dart';

class ResultsHelper {
  int weight;
  int height;
  Gender gender;
  int age;

  double bmiValue = 0.0;
  String evaluation = 'Invalid BMI';
  String interpretation = 'Please enter valid inputs in the BMI calculator';

  ResultsHelper(
      {required this.weight,
      required this.height,
      required this.gender,
      required this.age});

  void calculateResults() {
    bmiValue = weight / pow(height / 100.0, 2);
    if (bmiValue >= 25) {
      interpretation =
          'You have a higher than normal body weight. Try to exercise more.';
      evaluation = 'Overweight';
    } else if (bmiValue > 18.5) {
      evaluation = 'Normal';
      interpretation = 'You have a normal body weight. Good job!';
    } else {
      evaluation = 'Underweight';
      interpretation =
          'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
