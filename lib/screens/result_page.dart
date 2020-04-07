import 'package:bmi_calculator/components/action_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  String bmiResults;
  String bmi;
  String bmiDescription;

  ResultsPage({
    @required this.bmiResults,
    @required this.bmi,
    @required this.bmiDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI kalkulator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Resultat",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kDarkPurpleColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiResults,
                    style: kSuccessTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kHugeNumberTextStyle,
                  ),
                  Text(
                    bmiDescription,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomActionButton(
            label: "Fullfør",
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
