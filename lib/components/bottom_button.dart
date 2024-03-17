import 'package:flutter/material.dart';
import 'package:flutter_bmi/constant.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.title, @required this.onTap});

  final String? title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          child: Text(title.toString(),
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0
            ),
          ),
          color: Color(0xFFEB1555),
          width: double.infinity,
          height: bottomContainerHeight,
          margin: EdgeInsets.only(top: 10.0),
        ),
      ),
    );
  }
}