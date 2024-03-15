import 'package:flutter/material.dart';
import 'input_page.dart';

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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF0A0E21),
          title: const Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const InputPage(),
      ),
    );
  }
}

