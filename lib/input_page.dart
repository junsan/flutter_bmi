import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const backgroundColour = Color(0xFF1D1E33);

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
                  childContent: ContentWidget(
                    contentText: 'MALE',
                    genderIcon: FontAwesomeIcons.mars,
                  ),
                  colour: backgroundColour,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  childContent: ContentWidget(
                    contentText: 'FEMALE',
                    genderIcon: FontAwesomeIcons.venus,
                  ),
                  colour: backgroundColour,
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

class ContentWidget extends StatelessWidget {

  ContentWidget({required this.contentText, required this.genderIcon});

  final String contentText;
  final IconData genderIcon;

  final labelTextStyle = TextStyle(
      fontSize: 15.0,
      color: Color(0xFF8D8E98)
  );

  final colorWhite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 70.0,
          color: colorWhite,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(contentText,
          style: labelTextStyle,
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.childContent});

  final Color? colour;
  final Widget? childContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)
      ),
      child: childContent,
    );
  }
}
