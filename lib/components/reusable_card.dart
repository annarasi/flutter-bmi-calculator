import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget? cardChild;
  final VoidCallback? onPressed;

  ReusableCard(
      {this.cardColor = kCardInactiveColor, this.cardChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: cardColor),
        child: cardChild,
      ),
    );
  }
}
