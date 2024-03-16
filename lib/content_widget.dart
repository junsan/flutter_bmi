import 'package:flutter/material.dart';

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