//@dart = 2.8
import 'package:ff/HomePage.dart';
import 'package:ff/ListofExercise.dart';
import 'package:ff/SignInPage.dart';
import 'package:flutter/material.dart';
import 'PlusMinus.dart';

void main() {
  runApp(mainPage(
  ));
}
class mainPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFFE7E7EE),
        scaffoldBackgroundColor: Color(0xFFDBDBEA),
      ),
      //home:Homepage(),
      //home: ListofExercise(),
      home: SignInPage(),
    );
  }
}
