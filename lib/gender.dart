import 'package:flutter/material.dart';

class Gender1 extends StatelessWidget {
  Gender1({required this.contColor, required this.customChild, required this.otp});

  final Color contColor;
  final customChild;
  final void Function() otp;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: otp,
      child: Container(
        height: 140,
        width: 130,
        child: customChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: contColor,
        ),
      ),
    );
  }
}
