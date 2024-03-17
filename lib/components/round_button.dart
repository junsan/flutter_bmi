import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({required this.child, required this.onPressData});

  final Widget? child;
  final Function()? onPressData;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressData,
      child: child,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
          width: 50.0,
          height: 50.0
      ),
      textStyle: TextStyle(
          color: Colors.white
      ),
    );
  }
}