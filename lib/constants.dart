import 'package:flutter/material.dart';

enum Gender { init, male, female }

const kCardActiveColor = Color(0xFF1D1E33);
const kCardInactiveColor = Color(0xFF111328);
const kCardInactiveContentColor = Color(0xFF8D8E98);
const kCardActiveContentColor = Colors.white;
const kCardActiveIconSize = 50.0;
const kCardInactiveIconSize = 45.0;

const kCardHeadingTextStyle = TextStyle(
  color: kCardInactiveContentColor,
  fontSize: 25.0,
  fontWeight: FontWeight.w600,
);
const kCardInfoLabelTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);
const kCardInfoUnitLabelTextStyle = TextStyle(
  color: kCardInactiveContentColor,
  fontSize: 25.0,
  fontWeight: FontWeight.normal,
);

const kSliderActiveTrackColor = Colors.white;
const kSliderInactiveTrackColor = Color(0xFF8D8E98);
const kSliderThumbColor = Color(0xFFEB1555);
const kSliderOverlayColor = Color(0x29EB1555);

const kBottomContainerColor = Color(0xFFEB1555);
const kBottomContainerTopMargin = 10.0;
const kBottomContainerHeight = 80.0;
const kBottomContainerTextStyle =
    TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);

const kResultsPageHeadingTextStyle =
    TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold);
const kResultsPageEvaluationTextStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w900,
    color: Color(0xFF24D876),
    letterSpacing: 4.0);
const kResultsPageBMITextStyle =
    TextStyle(fontSize: 128.0, fontWeight: FontWeight.normal);
const kResultsPageInterpretationTextStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.normal,
    color: kCardInactiveContentColor);
const kResultsPageSaveButtonTextStyle = TextStyle(
  fontSize: 24.0,
  color: kCardActiveContentColor,
);
const kResultsPageSaveButtonPrimaryColor = Color(0x550A0E21);
