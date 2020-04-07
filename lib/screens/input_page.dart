import 'package:bmi_calculator/calculate_bmi.dart';
import 'package:bmi_calculator/components/action_button.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/item_content.dart';
import '../components/reusable_card.dart';
import '../constants.dart';

enum GenderType { FEMALE, MALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender = GenderType.MALE;
  int selectedHeight = 140;
  int selectedWeight = 60;
  int selectedAge = 23;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI Kalkulator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onTap: () =>
                          setState(() => selectedGender = GenderType.MALE),
                      color: selectedGender == GenderType.MALE
                          ? kDarkPurpleColor
                          : kDarkerPurpleColor,
                      cardChild: ItemSelect(
                        icon: FontAwesomeIcons.mars,
                        label: 'MANN',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onTap: () =>
                          setState(() => selectedGender = GenderType.FEMALE),
                      color: selectedGender == GenderType.FEMALE
                          ? kDarkPurpleColor
                          : kDarkerPurpleColor,
                      cardChild: ItemSelect(
                        icon: FontAwesomeIcons.venus,
                        label: 'KVINNE',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kDarkerPurpleColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HØYDE',
                      style: kLabelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          selectedHeight.toString(),
                          style: kNumberTextStyle,
                        ),
                        SizedBox(
                          width: 2.5,
                        ),
                        Text(
                          "cm",
                          style: kLabelStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                          thumbColor: kCrimsonRedColor,
                          overlappingShapeStrokeColor: kCrimsonRedColor,
                          overlayColor: kCrimsonRedColor.withAlpha(0x29),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                        value: selectedHeight.toDouble(),
                        min: 50.0,
                        max: 220.0,
                        onChanged: (val) =>
                            setState(() => selectedHeight = val.round()),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: kDarkerPurpleColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Vekt",
                            style: kLabelStyle,
                          ),
                          Text(
                            selectedWeight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    selectedWeight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    selectedWeight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kDarkerPurpleColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Alder",
                            style: kLabelStyle,
                          ),
                          Text(
                            selectedAge.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    selectedAge--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    selectedAge++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomActionButton(
              onTap: () {
                CalculatorBmi ca = CalculatorBmi(
                    height: selectedHeight, weight: selectedWeight);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultsPage(
                              bmi: ca.calculateBmi(),
                              bmiResults: ca.getResult(),
                              bmiDescription: ca.getDescription(),
                            )));
              },
              label: "Vis resultat",
            )
          ],
        ));
  }
}
