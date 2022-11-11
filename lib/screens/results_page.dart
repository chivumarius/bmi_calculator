import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';

import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  // ♦ Properties:
  final String bmiResult;
  final String resultText;
  final String interpretation;

  // ♦ Constructor:
  const ResultsPage({
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        // ♦ The "Alignment" of "Main Axes":
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        // ♦ The "Alignment" of "Transverse Axes":
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          // ♦ Row 1:
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              customColor: kActiveCardColor,
              cardChild: Column(
                // ♦ The "Alignment" of "Main Axes":
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                // ♦ The "Alignment" of "Transverse Axes":
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  // ♦ The "Body Mass Index" Result:
                  Text(
                    // ♦ "Converting" the "Text"
                    //   → to "Uppercase Text":
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),

                  // ♦ "BMI Value":
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),

                  // ♦ "Values interpretation":
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),

                  // ♦ The "Bottom Bar":
                  BottomButton(
                    buttonTitle: 'RE-CALCULATE',
                    onTap: () {
                      // ♦ Calling the ".pop()" Method
                      //   → to "Destroy this Screen Vies"
                      //   → and "Return" to the "Previous Route":
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
