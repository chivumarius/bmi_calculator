import 'package:flutter/material.dart';
import 'screens/input_page.dart';

// ♦♦ The "Main Function":
void main() => runApp(BMICalculator());

// ♦♦ The "" Class:
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ♦♦ The "ThemeData()" Custom Widget
      //     → with "dark()" Theme
      //     → and "copyWith()" Method
      //     → for Theme Customization:
      theme: ThemeData.dark().copyWith(
        // ♦ The "ColorScheme()" Widget:
        colorScheme: ColorScheme.fromSwatch().copyWith(
          // Setting "TopBar" & "BottomBar" Color
          // → for the Hexadecimal Color ("#000000")
          // → We Replace "#" with "0xFF" ("Opacity"):
          primary: const Color(0xFF0A0E21),

          // ♦ The "Floating Buttons" Color:
          secondary: const Color(0xFF0A0E21),
        ),
      ),

      // ♦♦ The "Home Screen Page":
      home: InputPage(),
    );
  }
}
