import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ff/HomePage.dart';

// this class has been designed to give some basic info about our team.

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBD3D4),
      appBar: AppBar(
        backgroundColor: Color(0xFF660000),
        title: Row(
          children: <Widget>[
            Text(
              'About Us',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Aleo',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text(
                  'Our Team',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF660000),
                    fontFamily: 'Aleo',
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, right: 1.0, left: 10.0),
                child: Text(
                  'We are continuously trying to improve our work to provide the user an awesome experience. Our goal is to give better and relevant experience to our customers.',
                  style: TextStyle(
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Aleo',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 430,
              color: Color(0xFFEBD3D4),
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 330,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Color(0xFF660000),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: CircleAvatar(
                              radius: 60.0,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=776&q=80'),
                            ),
                          ),
                          Text(
                            'Saipreethi',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Aleo',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            '2092933',
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Center(
                              child: Text(
                                '"I value a team environment because talking things out, leaning on each other, and working collaboratively are so crucial to anyone success ". ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Aleo',
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                  // fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 330,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Color(0xFF660000),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: CircleAvatar(
                              radius: 60.0,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1600275669439-14e40452d20b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
                            ),
                          ),
                          Text(
                            'Jatinder',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Aleo',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            '2092193',
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Center(
                              child: Text(
                                '"All in all, I know the importance of a team, and I work very well in a collaborative environment". ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Aleo',
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 330,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Color(0xFF660000),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: CircleAvatar(
                              radius: 60.0,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1603575448878-868a20723f5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'),
                            ),
                          ),
                          Text(
                            'Praveen',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Aleo',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            '2092164',
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Center(
                              child: Text(
                                '"I value a team environment because talking things out, leaning on each other, and working collaboratively are so crucial to anyone success ". ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Aleo',
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 330,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Color(0xFF660000),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: CircleAvatar(
                              radius: 60.0,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1543269664-02e941c052f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'),
                            ),
                          ),
                          Text(
                            'Manpreet',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Aleo',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            '2092039',
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Aleo',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Center(
                              child: Text(
                                '"I value a team environment because talking things out, leaning on each other, and working collaboratively are so crucial to anyone success". ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Aleo',
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
