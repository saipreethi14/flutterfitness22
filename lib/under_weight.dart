import 'package:flutter/material.dart';
import 'bmi.dart';

// This page gives diet plan to the users whose BMI comes under under-weight.

class underWeight extends StatefulWidget {
  const underWeight({Key? key}) : super(key: key);

  @override
  _underWeightState createState() => _underWeightState();
}

class _underWeightState extends State<underWeight> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEBD3D4),
        appBar: AppBar(
          backgroundColor: Color(0xFF660000),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Foods to gain Weight",
                style: TextStyle(fontFamily: 'Aleo'),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              //-------------------
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
                child: Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      // color: Color(0xFFEFEBE9),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF660000).withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 35.0, top: 35, bottom: 35, right: 15),
                          child: Container(
                            height: 130,
                            width: 150,
                            child: Image(
                              image: AssetImage('images/rice.jpeg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 35, top: 35.0, bottom: 10),
                              child: Text(
                                'Rice',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  "130 calories, 28 g carbohydrates,",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Aleo',
                                    color: Color(0xFF660000),
                                  ),
                                ),
                                Text(
                                  "0.3 gram fat, 2.7 g protein,",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Aleo',
                                    color: Color(0xFF660000),
                                  ),
                                ),
                                Text(
                                  "0.1 grams sugar.",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Aleo',
                                    color: Color(0xFF660000),
                                  ),
                                ),
                                Text(
                                  "and 0.9 grams fibres.",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Aleo',
                                    color: Color(0xFF660000),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              //......................................

              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    // color: Color(0xFFEFEBE9),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF660000).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35.0, top: 35, bottom: 35, right: 15),
                        child: Container(
                          height: 130,
                          width: 150,
                          child: Image(
                            image: AssetImage('images/whole eggs.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 35.0, bottom: 10),
                            child: Text(
                              'Whole Eggs',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "low calories, no carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "5 grams fat, 7 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "no sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and no fibres.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //-----------------

              //......................................

              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    // color: Color(0xFFEFEBE9),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF660000).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35.0, top: 35, bottom: 35, right: 15),
                        child: Container(
                          height: 130,
                          width: 150,
                          child: Image(
                            image: AssetImage('images/avacado.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 35, top: 35.0, bottom: 10),
                            child: Text(
                              'Avocados',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "160 calories, 9 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "15 g fat, 2 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "0.7 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and 5 grams fibres.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //-----------------
//......................................

              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    // color: Color(0xFFEFEBE9),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF660000).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35.0, top: 35, bottom: 35, right: 15),
                        child: Container(
                          height: 130,
                          width: 150,
                          child: Image(
                            image: AssetImage('images/cheese.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 35, top: 35.0, bottom: 10),
                            child: Text(
                              'Cheese',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "402 calories, 1.3 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "33 gram fat, 25 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "0.5 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and no fibres.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //-----------------
              //......................................

              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    // color: Color(0xFFEFEBE9),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF660000).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35.0, top: 35, bottom: 35, right: 15),
                        child: Container(
                          height: 130,
                          width: 150,
                          child: Image(
                            image: AssetImage('images/bananas.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 35, top: 35.0, bottom: 10),
                            child: Text(
                              'Bananas',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "89 calories, 23 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "0.3 gram fat, 1.1 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "12 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and 3 grams fibres.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //-----------------

              //......................................

              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    // color: Color(0xFFEFEBE9),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF660000).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35.0, top: 35, bottom: 35, right: 15),
                        child: Container(
                          height: 130,
                          width: 150,
                          child: Image(
                            image: AssetImage('images/chicken.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 5, top: 35.0, bottom: 10),
                            child: Text(
                              'Chicken Breast',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "165 calories, no carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "3.6 grams fat, 31 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "0 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and fibres.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //-----------------
//......................................

              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    // color: Color(0xFFEFEBE9),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF660000).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35.0, top: 35, bottom: 35, right: 15),
                        child: Container(
                          height: 130,
                          width: 150,
                          child: Image(
                            image: AssetImage('images/chocolat.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 2, top: 35.0, bottom: 10),
                            child: Text(
                              'Dark Chocolate',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "170 calories, 10 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "12 gram fat, 2 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "less sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and 11 grams fibres.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //-----------------
              //......................................

              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    // color: Color(0xFFEFEBE9),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF660000).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 35, bottom: 35, right: 15),
                        child: Container(
                          height: 130,
                          width: 150,
                          child: Image(
                            image: AssetImage('images/driedfruits2.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 35.0, bottom: 10),
                            child: Text(
                              'Dried Fruits',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "359 calories, 83 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "2.7 grams fat, 1 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "58 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and fibres.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //-----------------
              //......................................

              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    // color: Color(0xFFEFEBE9),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF660000).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35.0, top: 35, bottom: 35, right: 15),
                        child: Container(
                          height: 130,
                          width: 150,
                          child: Image(
                            image: AssetImage('images/pasta2.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 35, top: 35.0, bottom: 10),
                            child: Text(
                              'Pasta',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "131 calories, 25 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "1.1 gram fat, 5 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "4.8 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and fibres.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //-----------------
//......................................

              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    // color: Color(0xFFEFEBE9),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF660000).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35.0, top: 35, bottom: 35, right: 15),
                        child: Container(
                          height: 130,
                          width: 150,
                          child: Image(
                            image: AssetImage('images/peanutButter.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 35.0, bottom: 10),
                            child: Text(
                              'Peanut Butter',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "588 calories, 20 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "50 gram fat, 25 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "9 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and fibres.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //-----------------

              //......................................

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15, top: 15, bottom: 15),
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    // color: Color(0xFFEFEBE9),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF660000).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35.0, top: 35, bottom: 35, right: 15),
                        child: Container(
                          height: 130,
                          width: 150,
                          child: Image(
                            image: AssetImage('images/red meat.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 35, top: 35.0, bottom: 10),
                            child: Text(
                              'Red Meat',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "300 calories, no carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "high fat, 25 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "no sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and no fibres.",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Aleo',
                                  color: Color(0xFF660000),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
