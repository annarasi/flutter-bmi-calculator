import 'package:bmi_calculator/results_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:bmi_calculator/results_page.dart';
import 'package:bmi_calculator/constants.dart';

import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/bottom_button_widget.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.init;
  int selectedHeight = 165;
  int selectedWeight = 75;
  int selectedAge = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Expanded>[
                  Expanded(
                    child: ReusableCard(
                        cardColor: selectedGender == Gender.male
                            ? kCardActiveColor
                            : kCardInactiveColor,
                        cardChild: IconContent(
                          iconData: FontAwesome.mars,
                          label: 'Male',
                          isActive: selectedGender == Gender.male,
                        ),
                        onPressed: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        }),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardColor: selectedGender == Gender.female
                          ? kCardActiveColor
                          : kCardInactiveColor,
                      cardChild: IconContent(
                        iconData: FontAwesome.venus,
                        label: 'Female',
                        isActive: selectedGender == Gender.female,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Height'.toUpperCase(),
                      style: kCardHeadingTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          selectedHeight.toString(),
                          style: kCardInfoLabelTextStyle,
                        ),
                        Text(
                          'cms',
                          style: kCardInfoUnitLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: kSliderActiveTrackColor,
                        inactiveTrackColor: kSliderInactiveTrackColor,
                        thumbColor: kSliderThumbColor,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 25.0),
                        overlayColor: kSliderOverlayColor,
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 40.0),
                      ),
                      child: Slider(
                        value: selectedHeight.toDouble(),
                        min: 120,
                        max: 200,
                        divisions: 80,
                        onChanged: (double newValue) {
                          setState(() {
                            selectedHeight = newValue.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Weight'.toUpperCase(),
                            style: kCardHeadingTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                selectedWeight.toString(),
                                style: kCardInfoLabelTextStyle,
                              ),
                              Text(
                                'kgs',
                                style: kCardInfoUnitLabelTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundIconButton(
                                iconData: Fontisto.minus_a,
                                onPressed: () {
                                  setState(() {
                                    selectedWeight--;
                                  });
                                },
                              ),
                              RoundIconButton(
                                iconData: Fontisto.plus_a,
                                onPressed: () {
                                  setState(() {
                                    selectedWeight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Age'.toUpperCase(),
                            style: kCardHeadingTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                selectedAge.toString(),
                                style: kCardInfoLabelTextStyle,
                              ),
                              Text(
                                'years',
                                style: kCardInfoUnitLabelTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundIconButton(
                                iconData: Fontisto.minus_a,
                                onPressed: () {
                                  setState(() {
                                    selectedAge--;
                                  });
                                },
                              ),
                              RoundIconButton(
                                iconData: Fontisto.plus_a,
                                onPressed: () {
                                  setState(() {
                                    selectedAge++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomButtonWidget(
              buttonLabelText: 'Calculate',
              onPressed: () {
                ResultsHelper res = ResultsHelper(
                    weight: selectedWeight,
                    height: selectedHeight,
                    age: selectedAge,
                    gender: selectedGender);
                res.calculateResults();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(results: res)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
