import 'package:flutter/material.dart';

// This class is linked with bmi calculator page for selecting gender.

class Gender1 extends StatelessWidget {
  Gender1(
      {required this.contColor, required this.customChild, required this.otp});

  final Color contColor;
  final customChild;
  final void Function() otp;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: otp,
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5),
        child: Center(
          child: Container(
            height: 140,
            width: 130,
            child: customChild,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: contColor,
            ),
          ),
        ),
      ),
    );
  }
}
