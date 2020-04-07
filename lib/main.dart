import 'package:flutter/material.dart';

import 'constants.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kDarkestPurpleColor,
        backgroundColor: kDarkestPurpleColor,
        scaffoldBackgroundColor: kDarkestPurpleColor,
      ),
      home: InputPage(),
    );
  }
}
