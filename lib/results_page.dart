import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'results_helper.dart';
import 'components/reusable_card.dart';
import 'components/bottom_button_widget.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  final ResultsHelper results;

  ResultsPage({required this.results});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'Your Result',
                  style: kResultsPageHeadingTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          results.evaluation.toUpperCase(),
                          style: kResultsPageEvaluationTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        results.bmiValue.toStringAsFixed(2),
                        style: kResultsPageBMITextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: Text(
                            results.interpretation,
                            style: kResultsPageInterpretationTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: ElevatedButton(
                          child: Text(
                            'Save Result'.toUpperCase(),
                          ),
                          style: ElevatedButton.styleFrom(
                            textStyle: kResultsPageSaveButtonTextStyle,
                            primary: kResultsPageSaveButtonPrimaryColor,
                            padding: EdgeInsets.symmetric(
                                horizontal: 64.0, vertical: 32.0),
                          ),
                          onPressed: () {
                            print('Save results button pressed');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButtonWidget(
              buttonLabelText: 'Re-Calculate your BMI',
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
