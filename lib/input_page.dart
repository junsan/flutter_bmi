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

  Color maleCardColour = inactiveBackgroundColor;
  Color femaleCardColour = inactiveBackgroundColor;

  void updateColour(GenderChoice gender) {
    if (gender == GenderChoice.male) {
      if(maleCardColour == inactiveBackgroundColor) {
        maleCardColour = backgroundColour;
        femaleCardColour = inactiveBackgroundColor;
      } else {
        maleCardColour = inactiveBackgroundColor;
      }
    } else if (gender == GenderChoice.female) {
      if(femaleCardColour == inactiveBackgroundColor) {
        femaleCardColour = backgroundColour;
        maleCardColour = inactiveBackgroundColor;
      } else {
        femaleCardColour = inactiveBackgroundColor;
      }
    }
  }


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
                      updateColour(GenderChoice.male);
                    });
                  },
                  child: ReusableCard(
                    childContent: ContentWidget(
                      contentText: 'MALE',
                      genderIcon: FontAwesomeIcons.mars,
                    ),
                    colour: maleCardColour,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(GenderChoice.female);
                    });
                  },
                  child: ReusableCard(
                    childContent: ContentWidget(
                      contentText: 'FEMALE',
                      genderIcon: FontAwesomeIcons.venus,
                    ),
                    colour: femaleCardColour,
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
