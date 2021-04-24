import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    this.bmiResult,
    this.textResult,
    this.interpretation,
  });

  final String bmiResult;
  final String textResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: ReusableCard(
            childCard: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 30),
              ),
            ),
            colour: null,
          )),
          // Expanded(
          //   child: Container(
          //     margin: EdgeInsets.all(10),
          //     padding: EdgeInsets.only(top: 20),
          //     child: Text(
          //       'Your Result',
          //       style: TextStyle(fontSize: 30),
          //     ),
          //   ),
          // ),
          Expanded(
            flex: 5,
            child: Container(
              child: ReusableCard(
                colour: Color(0xff1d1e33),
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      textResult,
                      style: TextStyle(
                        color: Color(0xFF2F6933),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmiResult,
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Color(0xffeb1555),
              childCard: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Text(
                    'Re-Calculate',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//
// Text(textResult),
// Text(bmiResult),
// Text(interpretation),
