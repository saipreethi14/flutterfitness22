import 'package:flutter/material.dart';

class ResusableCard extends StatelessWidget {
  ResusableCard(
      {required this.theColor, required this.cardChild, required this.onPress});

  final Color theColor;
  final Widget cardChild;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: theColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
