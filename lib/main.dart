import 'package:bmi_calculator/screen/input_page.dart';
import 'package:flutter/material.dart';
import 'screen/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF101639),
          scaffoldBackgroundColor: Color(0xFF101639)),
      // theme: ThemeData(
      //     //0xFFbasically is opacity which is opaque and rest two value RGB.also for tabs abd bottombar.
      //     primaryColor: Color(0xFF101639),
      //     accentColor: Colors.purple,
      //     scaffoldBackgroundColor: Color(0xFF101639)),
      home: InputPage(),
    );
  }
}
