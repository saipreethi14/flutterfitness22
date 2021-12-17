import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'plusMinus.dart';
import 'dart:math';
import 'gender.dart';

enum Gender {
  male,
  female,
}
Gender selectedGender = Gender.male;

const activeColor = Color(0xFFFFFFFF);
const inactiveColor = Colors.grey;

const maleColor = inactiveColor;
const femaleColor = inactiveColor;


int age = 5;
double height = 5;
double weight = 40;
double result = 20;

class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  _bmiState createState() => _bmiState();
}

class _bmiState extends State<bmi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('Project', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 30.0, left: 8.0),
                child: Text('Calculate your BMI', style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 170,
                  width: double.infinity,
                  color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Result: ', style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                      ),
                      Center(
                        child: Text(result.toString(), style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
              //.............................................
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Gender1(
                      otp: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      contColor: selectedGender == Gender.male ? activeColor : inactiveColor,
                      customChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.mars,
                                size: 70, color: Colors.black),
                            SizedBox(height: 10.0),
                            Text('Male', style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),),
                          ]
                      ),
                    ),

                    Gender1(
                      otp: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      contColor: selectedGender == Gender.female ? activeColor : inactiveColor,
                      customChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.venus,
                              size: 70, color: Colors.black,),
                            SizedBox(height: 10.0),
                            Text('Female', style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),),
                          ]
                      ),
                    ),
                  ],
                ),
              ),
              //................................
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left:28.0, right: 28.0),
                child: TextField(
                  onChanged: (h) {
                    height = h as double;
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 5.0),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Height',
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    hintText: 'Enter your height',
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 18.0, left:28.0, right: 28.0),
                child: TextField(
                  onChanged: (w) {
                    height = w as double;
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 5.0),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Weight',
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    hintText: 'Enter your weight',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                  height: 130,
                  width: double.infinity,
                  color: Colors.black12,
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Age', style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                        ),
                      ),
                      SizedBox(height: 5),
                      Center(
                        child: Text(age.toString(), style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:120.0),
                        child: Row(
                          children: <Widget>[
                            PlusMinus(
                              onPress: (){
                                setState(() {
                                  age--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(width: 25.0),
                            PlusMinus(
                              onPress: (){
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        result = weight/(height*height);
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        Center(child: Text('Calculate', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),)),
                        Center(child: Text('BMI', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22)),),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      fixedSize: Size.fromWidth(400),
                      primary: Colors.black,
                      onSurface: Colors.red,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )

    );
  }
}

