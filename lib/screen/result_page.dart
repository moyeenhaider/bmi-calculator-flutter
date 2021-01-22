// import 'package:bmi_calculator/bottom_container.dart';
import 'package:bmi_calculator/component/bottom_container.dart';
import 'package:bmi_calculator/component/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
// import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String bmiText;
  final String interpretation;

  ResultPage({this.bmiText, this.bmiResult, this.interpretation});
  // final String result = "Normal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text("Your Result", style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableComponent(
              colour: kInactiveCardColor,
              cardChild: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      bmiText,
                      style: bmiText == "Normal"
                          ? kNormalResultTextStyle
                          : kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMItextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: BottomContainer(
              label: "RE-CALCULATE",
              onPress: () {
                Navigator.pop(context);
                // context,
                // MaterialPageRoute(
                //   builder: (context) => InputPage(),
                // ),
                // );
              },
            ),
          )
        ],
      ),
    );
  }
}
