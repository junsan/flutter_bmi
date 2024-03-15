import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: Color(0xFF1D1E33),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Color(0xFF1D1E33),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            colour: Color(0xFF1D1E33),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: Color(0xFF1D1E33),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Color(0xFF1D1E33),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});

  Color? colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}