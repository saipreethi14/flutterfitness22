import 'package:flutter/material.dart';


class ImageContent extends StatelessWidget {

  ImageContent({required this.img1, required this.label});

  final Image img1;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        img1,
        SizedBox(
          height: 15.0,
        ),

        Text(label,style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
      ],
    );
  }
}
