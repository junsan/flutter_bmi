import 'package:flutter/material.dart';
import 'constant.dart';

class ContentWidget extends StatelessWidget {

  ContentWidget({required this.contentText, required this.genderIcon});

  final String contentText;
  final IconData genderIcon;
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