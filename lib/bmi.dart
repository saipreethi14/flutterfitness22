
import 'package:ff/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'PlusMinus.dart';
import 'under_weight.dart';
import 'dart:math';
import 'gender.dart';
import 'bad.dart';
import 'result.dart';

enum Gender {
  male,
  female,
}
Gender selectedGender = Gender.male;
const kShrinePink50 = Color(0xFFFEEAE6);
const activeColor = Color(0xFFBDBDBD);
const inactiveColor = Color(0xFFFFFFFF);
const kShrinePink300 = Color(0xFFFBB8AC);
const kpurplr = Color(0xFF762141);
const color1 = Color(0xFFDF97BB);
const color2 = Color(0xFF660000);
const back2 = Color(0xFFEBD3D4);
const back3 = Color(0xFFDCC6C7);
const maleColor = inactiveColor;
const femaleColor = inactiveColor;


// int age = 0;
// double height = 0.0;
// double weight = 0.0;
// double result=0.0;
// var comment = "Comment";

class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  _bmiState createState() => _bmiState();
}

class _bmiState extends State<bmi> {

  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();


  int age = 0;
  double height = 0.0;
  double weight = 0.0;
  late double _result = 0.0;
  var comment = "Comment";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBD3D4),
      appBar: AppBar(
          backgroundColor: Color(0xFF660000),
          title:
          Row(
            children:<Widget> [
              // IconButton(
              //   onPressed: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (Context) => Homepage()));
              //   },
              //   icon: Icon(Icons.arrow_back_ios_new_rounded),
              // ),
              Text('BMI Calculator', style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ],
          )
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 30.0, left: 8.0),
              child: Center(
                child: Text('Calculate your BMI', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                    borderRadius: BorderRadius.all(Radius.circular(20))),


                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Result ', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    ),
                    Center(
                      child: Text(_result.toStringAsFixed(2), style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    ),
                    SizedBox(height: 8),
                    Result(
                      customChild1: Center(
                        child: Text(comment, style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //.............................................
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10, right:8.0, left: 45),
                    child: Gender1(
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
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10, right: 30),
                    child: Gender1(
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
                  ),
                ],
              ),
            ),
            //................................
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left:28.0, right: 28.0),
              child: TextField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                onChanged: (h) {
                  height = h as double;
                },
                obscureText: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[400],
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 5.0),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Height in cm',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  hintText: 'Enter your height',
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0, left:28.0, right: 28.0),
              child: TextField(
                controller: _weightController,
                keyboardType: TextInputType.number,
                onChanged: (w) {
                 weight = w as double;
                },
                obscureText: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[400],
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 5.0),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Weight in kg',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  hintText: 'Enter your weight',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28, top: 20, bottom: 20),
              child: Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Column(
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Age', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                      ),
                    ),
                    SizedBox(height: 5),
                    Center(
                      child: Text(age.toString(), style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:110.0),
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
              padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 10),
              child: Center(
                child: TextButton(
                  onPressed: (){
                    setState(() {
                       height = double.parse(_heightController.text) / 100;
                       weight = double.parse(_weightController.text);

                      _result = weight/(height*height);  ////////////BMI FORMULA//////////////
                      if (_result <= 18.5 ){
                        comment = 'Under weight';
                      }
                      else if(_result >= 18.5 && _result<= 24.9)
                      {
                        comment = 'Good';
                      }
                      else{
                        comment = 'Over weight';
                      }
                      _result = _result;
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
                    backgroundColor: Colors.grey[400],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 18),
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (Context) => bad()));
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Over Weight',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22),),
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.grey[400],
                      // fixedSize: Size.fromWidth(160),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 18),
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (Context) => underWeight()));
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Under Weight',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22),),
                    ),
                    style: TextButton.styleFrom(
                      // fixedSize: Size.fromWidth(80),
                      primary: Colors.black,
                      backgroundColor: Colors.grey[400],
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),

    );
  }
}