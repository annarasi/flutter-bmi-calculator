import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:bmi_calculator/constants.dart';

class BottomButtonWidget extends StatelessWidget {
  final String buttonLabelText;
  final VoidCallback onPressed;

  const BottomButtonWidget(
      {required this.buttonLabelText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            buttonLabelText.toUpperCase(),
            style: kBottomContainerTextStyle,
          ),
        ),
      ),
    );
  }
}
