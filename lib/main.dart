import 'package:flutter/material.dart';
import 'input_page.dart';

const DARKEST_PURPLE = 0xFF0A0E21;

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(DARKEST_PURPLE),
        backgroundColor: Color(DARKEST_PURPLE),
        scaffoldBackgroundColor: Color(DARKEST_PURPLE),
      ),
      home: InputPage(),
    );
  }
}