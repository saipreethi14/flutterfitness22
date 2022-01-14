import 'package:flutter/material.dart';
import 'bmi.dart';

// This page gives diet plan to the users whose BMI comes under over-weight.

class bad extends StatefulWidget {
  const bad({Key? key}) : super(key: key);

  @override
  _badState createState() => _badState();
}

class _badState extends State<bad> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEBD3D4),
        appBar: AppBar(
          backgroundColor: Color(0xFF660000),
          title: Text(
            "Foods for Weight loss",
            style: TextStyle(fontFamily: 'Aleo'),
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
                        // list of items that are suggested if they come under over-weight.
                        padding: const EdgeInsets.only(
                            left: 35.0, top: 35, bottom: 35, right: 15),
                        child: Container(
                          height: 130,
                          width: 150,
                          child: Image(
                            image: AssetImage('images/apples.jpeg'),
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
                              'Apples',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "95 calories, 25 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "0 gram fat, 1 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "19 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and 3 grams fibres.",
                                style: TextStyle(
                                  fontSize: 10,
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
                            image: AssetImage('images/egg.jpeg'),
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
                              'Eggs',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "75 calories, 2 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "5 gram fat, 7 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "1.1 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and 0 grams fibres.",
                                style: TextStyle(
                                  fontSize: 10,
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
                            image: AssetImage('images/almon.jpeg'),
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
                              'Almonds',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "165 calories, 6.11 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "14.2 g fat, 7 gm protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "1.23 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and 3.54 grams fibres.",
                                style: TextStyle(
                                  fontSize: 10,
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
                            image: AssetImage('images/potatoes.png'),
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
                              'Potatoes',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "77 calories, 17 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "0 gram fat, 2 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "90 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and 2.2 grams fibres.",
                                style: TextStyle(
                                  fontSize: 10,
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
                            image: AssetImage('images/beann.jpg'),
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
                              'Beans',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "347 calories, 63 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "1.2 gram fat, 21 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "2.1 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and 16 grams fibres.",
                                style: TextStyle(
                                  fontSize: 10,
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
                            image: AssetImage('images/cocoabean.jpeg'),
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
                              'Cacao',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "228 calories, 58 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "14 grams fat, 20 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "1.8 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and 33 grams fibres.",
                                style: TextStyle(
                                  fontSize: 10,
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
                              image: AssetImage('images/wheat22.jpeg'),
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
                                'Wheat Berries',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFF660000),
                                ),
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  "300 calories, 40 g carbohydrates,",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF660000),
                                  ),
                                ),
                                Text(
                                  "1.7 gram fat, 6 g protein,",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF660000),
                                  ),
                                ),
                                Text(
                                  "0.4 grams sugar.",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF660000),
                                  ),
                                ),
                                Text(
                                  "and 11 grams fibres.",
                                  style: TextStyle(
                                    fontSize: 10,
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
                            image: AssetImage('images/figs.jpeg'),
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
                              'Figs',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "37 calories, 6.5 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "1 gram fat, 3 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "48 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and 10 grams fibres.",
                                style: TextStyle(
                                  fontSize: 10,
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
                            image: AssetImage('images/lemons.jpeg'),
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
                              'Lemons',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "29 calories, 9 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "0.3 gram fat, 1.1 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "2.5 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and 2.8 grams fibres.",
                                style: TextStyle(
                                  fontSize: 10,
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
                            image: AssetImage('images/yogurts.jpeg'),
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
                              'Greek Yogurt',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "59 calories, 3.6 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "0.4 gram fat, 10 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "3.2 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and 0 grams fibres.",
                                style: TextStyle(
                                  fontSize: 10,
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
                            image: AssetImage('images/popco.jpeg'),
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
                              'Popcorn',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xFF660000),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "375 calories, 74 g carbohydrates,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "4.3 gram fat, 11 g protein,",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "0.9 grams sugar.",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF660000),
                                ),
                              ),
                              Text(
                                "and 13 grams fibres.",
                                style: TextStyle(
                                  fontSize: 10,
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
            ],
          ),
        ),
      ),
    );
  }
}
