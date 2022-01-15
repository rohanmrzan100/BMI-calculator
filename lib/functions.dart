import 'dart:ffi';

import 'homepage.dart';

enum sex { male, female }

void changeColor(sex selectedGender) {
  if (sex.male == selectedGender) {
    if (displaycolormale == color2) {
      displaycolormale = color3;
      displaycolorfemale = color2;
    } else {
      displaycolormale = color2;
      displaycolorfemale = color2;
    }
  } else {
    if (displaycolorfemale == color2) {
      displaycolorfemale = color3;
      displaycolormale = color2;
    } else {
      displaycolorfemale = color2;
      displaycolormale = color2;
    }
  }
}

double calculateBMI(int weight, int height) {
  double BMI = (weight / (height * height)) * 10000;
  return BMI;
}

String giveAdvice(double BMI) {
  if (BMI > 24) {
    return 'You are overweight.';
  } else if (BMI < 18) {
    return 'You are underweight.';
  } else {
    return 'Your weight is normal.';
  }
}
