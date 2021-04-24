import 'package:flutter/material.dart';
import 'input_page.dart';
// import 'result_page.dart';
import 'calc_result.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  final CalculateBMI calc = CalculateBMI();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   '': (context) => InputPage(),
      //   '/result': (context) => ResultPage(bmiResult: calc.calculateResult()),
      // },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0D22),
        scaffoldBackgroundColor: Color(0xff0A0D22),
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
