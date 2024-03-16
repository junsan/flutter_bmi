import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'content_widget.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const backgroundColour = Color(0xFF1D1E33);
const inactiveBackgroundColor =  Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  State<InputPage> createState() => _InputPageState();
}

enum GenderChoice {
  male,
  female
}

class _InputPageState extends State<InputPage> {

  GenderChoice? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = GenderChoice.male;
                    });
                  },
                  child: ReusableCard(
                    childContent: ContentWidget(
                      contentText: 'MALE',
                      genderIcon: FontAwesomeIcons.mars,
                    ),
                    colour: selectedGender == GenderChoice.male ? backgroundColour :  inactiveBackgroundColor,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = GenderChoice.female;
                    });
                  },
                  child: ReusableCard(
                    childContent: ContentWidget(
                      contentText: 'FEMALE',
                      genderIcon: FontAwesomeIcons.venus,
                    ),
                    colour: selectedGender == GenderChoice.female ? backgroundColour :  inactiveBackgroundColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            colour: backgroundColour,
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: backgroundColour,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: backgroundColour,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Color(0xFFEB1555),
          width: double.infinity,
          height: bottomContainerHeight,
          margin: EdgeInsets.only(top: 10.0),
        )
      ],
    );
  }
}
