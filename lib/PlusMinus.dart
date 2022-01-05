import 'package:flutter/material.dart';

class PlusMinus extends StatelessWidget {

  PlusMinus({required this.icon, required this.onPress});
  final IconData icon;
  final void Function() onPress;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      fillColor: Colors.white,
      constraints: BoxConstraints.tightFor(
        width: 44.0,
        height: 44.0,
      ),
      shape: CircleBorder(),
    );
  }
}
