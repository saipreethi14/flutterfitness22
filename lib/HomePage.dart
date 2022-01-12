// ignore: file_names
import 'package:ff/CoachData.dart';
import 'package:ff/ListofExercise.dart';
import 'package:ff/SignInPage.dart';
import 'package:ff/bmi.dart';
import 'package:ff/videoPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/src/provider.dart';

import 'Coach.dart';
import 'ImageContent.dart';
import 'ReusableCard.dart';
import 'about_us.dart';
import 'auth_service.dart';

class Homepage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<Homepage> {
  late FirebaseAuth _auth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBD3D4),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.fitness_center),
        ),
        title: Text(
          'GET SET GO',
          style: TextStyle(
              fontFamily: 'Aleo', fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<AuthService>().Signout().then((result) =>
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => SignInPage())));
              //print(_auth.currentUser);
            },
            icon: Icon(Icons.logout),
          ),
        ],
        backgroundColor: Color(0xFF660000),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ResusableCard(
                    onPress: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (Context) => ListofExercise()));
                      });
                    },
                    cardChild: ImageContent(
                      img1: Image.asset('images/fitness-center.png',
                          height: 100, fit: BoxFit.fill),
                      label: 'EXERCISES',
                    ),
                    theColor: Colors.white,
                  ),
                ),
                Expanded(
                  child: ResusableCard(
                    onPress: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (Context) => bmi()));
                      });
                    },
                    cardChild: ImageContent(
                      img1: Image.asset('images/calculator.png',
                          height: 100, fit: BoxFit.fill),
                      label: 'BMI CALCULATOR',
                    ),
                    theColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ResusableCard(
                    onPress: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (Context) => CoachData()));
                      });
                    },
                    cardChild: ImageContent(
                      img1: Image.asset('images/coach.png',
                          height: 100, fit: BoxFit.fill),
                      label: 'FIND COACH',
                    ),
                    theColor: Colors.white,
                  ),
                ),
                Expanded(
                  child: ResusableCard(
                    onPress: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (Context) => videoPage()));
                      });
                    },
                    cardChild: ImageContent(
                      img1: Image.asset('images/VC.png',
                          height: 100, fit: BoxFit.fill),
                      label: 'VIDEOS',
                    ),
                    theColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ResusableCard(
                    onPress: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (Context) => AboutUs()));
                      });
                    },
                    cardChild: ImageContent(
                      img1: Image.asset('images/chat.png',
                          height: 100, fit: BoxFit.fill),
                      label: 'ABOUT US',
                    ),
                    theColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
