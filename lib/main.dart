import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.white, fontSize: 20)),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}

