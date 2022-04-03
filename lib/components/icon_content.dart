import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String label;
  final bool isActive;

  IconContent(
      {required this.iconData, required this.label, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: isActive ? kCardActiveIconSize : kCardInactiveIconSize,
          color: isActive ? kCardActiveContentColor : kCardInactiveContentColor,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
            color:
                isActive ? kCardActiveContentColor : kCardInactiveContentColor,
          ),
        )
      ],
    );
  }
}
