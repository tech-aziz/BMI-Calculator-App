import 'dart:math';
class Calculation{

  int ? age, weight;
  double ? height;
  Calculation({this.age, this.weight, this.height});

  getResult(){
    final bmi = weight! / pow(height! / 100, 2);
    return bmi;
  }

}