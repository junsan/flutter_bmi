import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'content_widget.dart';
import 'reusable_card.dart';
import 'constant.dart';


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
  int height = 180;

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
            childContent: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text('HEIGHT', style:
                    labelTextStyle,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(), style: largeTextStyle,),
                    Text('cm', style: labelTextStyle,)
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Color(0xFF8D8E98),
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x26EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0)
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                      },
                      min: 122.0,
                      max: 220.0,
                  ),
                ),
              ],
            ),
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
