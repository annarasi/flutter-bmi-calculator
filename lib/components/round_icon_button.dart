import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData iconData;

  const RoundIconButton({required this.onPressed, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kCardInactiveColor,
      child: Center(
        child: Ink(
          decoration: const ShapeDecoration(
            color: kCardActiveColor,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: Icon(
              iconData,
            ),
            iconSize: 30.0,
            color: kCardActiveContentColor,
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
