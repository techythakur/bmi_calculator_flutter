import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.resultText, @required this.bmiResult, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
            margin: EdgeInsets.only(top: 25),
          ),
          Expanded(
            child: ReusableCard(
            colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(resultText, style: kResultTextStyle
                  ),
                ),
                Center(
                  child: Text(bmiResult, style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                interpretation,
                style: TextStyle(
                  fontSize: 20,
                ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              child: Center(child: Text('RE-CALCULATE', style: kLargeButtonTextStyle,)),
              color: kBottomCardColor,
              margin: EdgeInsets.only(top: 10),
              height: kBottomContainerHeight,
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
