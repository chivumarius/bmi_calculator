import 'package:flutter/material.dart';
import '../constants.dart';

// ♦♦ The "State Less Widget" → for "IconContent" Class:
class IconContent extends StatelessWidget {
  // "Final Property"
  //   → with the "Assigned Value"
  //   → in the "Execution Time":
  final IconData? icon;
  final String? label;

  // ♦ Constructor:
  const IconContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      // ♦ The "Center Alignment" of "Column Widgets"
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        // Adding "Gap":
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
