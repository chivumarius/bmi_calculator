import 'package:flutter/material.dart';

// ♦♦ The "RoundIconButton" Class
//     → "Built" from "Scratch":
class RoundIconButton extends StatelessWidget {
  // ♦ Property:
  final IconData icon;
  final VoidCallback? onPressed;

  // ♦ Constructor:
  const RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: const CircleBorder(),
      // shape: const RoundedRectangleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
