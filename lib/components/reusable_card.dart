import 'package:flutter/material.dart';

// ♦♦ The "State Less Widget" → for "ReusableCard" Class:
class ReusableCard extends StatelessWidget {
  // "Final Property"
  //   → with the "Assigned Value"
  //   → in the "Execution Time":
  final Color customColor;
  final Widget? cardChild;
  final VoidCallback? onPress;

  // ♦ Constructor:
  const ReusableCard({required this.customColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: customColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
