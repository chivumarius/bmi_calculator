import 'package:flutter/material.dart';
import '../constants.dart';

// ♦♦ The "BottomButton" Class
class BottomButton extends StatelessWidget {
  // ♦ Property:
  final VoidCallback onTap;
  final String buttonTitle;

  // ♦ Constructor:
  const BottomButton({required this.onTap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),

        // Full Screen Width:
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
