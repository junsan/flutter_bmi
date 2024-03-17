import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/content_widget.dart';
import '../components/reusable_card.dart';
import '../constant.dart';
import 'results_page.dart';
import '../components/round_button.dart';
import '../components/bottom_button.dart';
import '../components/bmi_calculator.dart';

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
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF0A0E21),
          title: const Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.white),
          ),
      ),
      body: Column(
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
                    childContent: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                          style: labelTextStyle,
                        ),
                        Text(weight.toString(),
                          style: largeTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressData: () {
                                setState(() {
                                    weight--;
                                });
                              },
                              child: Icon(FontAwesomeIcons.minus),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              child: Icon(FontAwesomeIcons.plus),
                              onPressData: () {
                                setState(() {
                                  weight++;
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
                    childContent: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                          style: labelTextStyle,
                        ),
                        Text(age.toString(),
                          style: largeTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressData: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(FontAwesomeIcons.minus),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              child: Icon(FontAwesomeIcons.plus),
                              onPressData: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    colour: backgroundColour,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            title: 'CALCULATE',
            onTap: () {

              BmiCalculator calc = BmiCalculator();

              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.bmiResult(height, weight),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  )
              ));
            },
          ),
        ],
      ),
    );
  }
}
