import 'package:flutter/material.dart';


// This is linked with bmi calculator page for showing result.

class Result extends StatelessWidget {
  Result({required this.customChild1});
  final customChild1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: customChild1,
    );
  }
}
