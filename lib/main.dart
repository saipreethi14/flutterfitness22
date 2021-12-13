import 'package:ff/HomePage.dart';
import 'package:ff/ListofExercise.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(mainPage());
}
class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFFE7E7EE),
        scaffoldBackgroundColor: Color(0xFFDBDBEA),
      ),
      //home:Homepage(),
      //list of exercisepage
      home: ListofExercise(),
    );
  }
}
