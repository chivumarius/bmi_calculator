import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import 'results_page.dart';

import '../constants.dart';

import '../components/round_icon_button.dart';

// ♦ The "Gender" Enum Data Type:
enum Gender {
  empty,
  male,
  female,
}

// ♦♦ The "State Ful Widget" → for "InputPage" Class:
class InputPage extends StatefulWidget {
  @override
  // _InputPageState createState() => _InputPageState();
  State<InputPage> createState() => _InputPageState();
}

// ♦♦ The "State <InputPage>" → for  "_InputPageState" Class:
class _InputPageState extends State<InputPage> {
  // ♦ Enum Property:
  Gender selectedGender = Gender.empty;

  // ♦ Properties with "Default Starting Values":
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,

      // ♦ The "App Bar Content":
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),

      // ♦ The "Body Content":
      body: Column(
        // ♦ The "Alignment" of "Transverse Axes":
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          // ♦ Row 1:
          Expanded(
            child: Row(
              children: <Widget>[
                // ♦ Column 1:
                Expanded(
                  child: ReusableCard(
                    // ♦ The "Function Type Property":
                    onPress: () {
                      // ♦ State Setting:
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },

                    // ♦ The "Ternary Operator":
                    customColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,

                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),

                // ♦ Column 2:
                Expanded(
                  child: ReusableCard(
                    // ♦ The "Function Type Property":
                    onPress: () {
                      // ♦ State Setting:
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },

                    // ♦ The "Ternary Operator":
                    customColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,

                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ♦ Row 2 → "Slider":
          Expanded(
            child: ReusableCard(
              customColor: kActiveCardColor,
              cardChild: Column(
                // ♦ The "Alignment" of "Main Axes":
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  const Text(
                    'HEIGHT',
                  ),
                  Row(
                    // ♦ The "Center Alignment" of "Main Axes":
                    mainAxisAlignment: MainAxisAlignment.center,

                    // ♦ The "Baseline Alignment" of "Transverse Axes":
                    crossAxisAlignment: CrossAxisAlignment.baseline,

                    // The "textBaseline" Property
                    //  → Required by the "baseline":
                    textBaseline: TextBaseline.alphabetic,

                    children: <Widget>[
                      Text(
                        // ♦ We "Convert" the "int" Data Type → to "string"
                        //   → by Calling the ".toString()" Method:
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),

                  // ♦ The "SliderTheme()" Widget
                  //   → for "Widget Customization":
                  SliderTheme(
                    // ♦ In the "copyWith()" Method
                    //    → we "Add" the "Properties"
                    //    → that we "Want" to "Change"
                    //    → for the "Slider Theme":
                    data: SliderTheme.of(context).copyWith(
                      // ♦ The "Color Customizations":
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: const Color(0xFF8D8E98),
                      thumbColor: const Color(0xFFEB1555),
                      overlayColor: const Color(0x29EB1555),

                      // ♦ "Shapes Customizations":
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),

                    // ♦ The "Slider()" Widget:
                    child: Slider(
                      // ♦ We "Convert" the "int" Data Type → to "string"
                      //   → by Calling the ".toDouble()" Method:
                      // ♦ The "Starting Value":
                      value: height.toDouble(),

                      // ♦ Defining the "Scale":
                      min: 120.0,
                      max: 220.0,

                      // ♦ The "Function" with "Input":
                      onChanged: (double newValue) {
                        // ♦ State Setting
                        //   → to "Upgrade" the "Slider":
                        setState(() {
                          // ♦ "Upper Rounding" of "Double" Values
                          //    → to an |
                          //    → by the "round()" Method:
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ♦ Row 3:
          Expanded(
            child: Row(
              children: <Widget>[
                // ♦ Column 1:
                Expanded(
                  child: ReusableCard(
                    customColor: kActiveCardColor,
                    cardChild: Column(
                      // ♦ The "Alignment" of "Main Axes":
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        const Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          // ♦ The "Alignment" of "Main Axes":
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                            // The "+" Button:
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),

                            // ♦ Adding Space:
                            const SizedBox(
                              width: 10.0,
                            ),

                            // The "-" Button:
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // ♦ Column 2:
                Expanded(
                  child: ReusableCard(
                    customColor: kActiveCardColor,
                    cardChild: Column(
                      // ♦  The "Alignment" of "Main Axes":
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        const Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          // ♦ The "Alignment" of "Main Axes":
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                            // The "+" Button:
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),

                            // ♦ Adding Space:
                            const SizedBox(
                              width: 10.0,
                            ),

                            // The "-" Button:
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ♦ The "Bottom Bar":
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              // ♦ Creation and Initialization of the "calc" Object:
              CalculatorBrain calc = CalculatorBrain(
                height: height,
                weight: weight,
              );

              // ♦ Calling the "push()" Method:
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultsPage(
                          bmiResult: calc.calculateBMI(),
                          resultText: calc.getResult(),
                          interpretation: calc.getInterpretation(),
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}
