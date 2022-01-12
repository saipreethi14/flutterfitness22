import 'package:flutter/material.dart';

// This class is linked with bmi calculator page for designing +, - buttons for increasing and decreasing age.
class PlusMinus extends StatelessWidget {
  PlusMinus({required this.icon, required this.onPress});

  final IconData icon;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    // designed plus minus buttons.
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      fillColor: Color(0xFFEBD3D4),
      constraints: BoxConstraints.tightFor(
        width: 44.0,
        height: 44.0,
      ),
      shape: CircleBorder(),
    );
  }
}
