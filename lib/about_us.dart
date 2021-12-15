import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('About Us', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget> [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text('Our Team', style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'MonteCarlo',
                  ),),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0, right: 1.0, left: 10.0),
                  child: Text('We are continuously trying to improve our work to provide the user an awesome experience. Our goal is to give better and relevant experience to our customers.', style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                    // fontFamily: 'MonteCarlo',
                  ),),
                ),
              ),
              Container(
                height: 450,
                color: Colors.grey,
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 330,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: CircleAvatar(
                                radius: 60.0,
                                backgroundImage: NetworkImage('https://lumiere-a.akamaihd.net/v1/images/open-uri20150422-20810-1g8eq9w_b9efb986.jpeg'),
                              ),
                            ),
                            Text('Abcde', style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                            ),),
                            Text('12345', style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontStyle: FontStyle.italic
                            ),),
                            Padding(
                              padding: const EdgeInsets.all(22.0),
                              child: Center(
                                child: Text('"I value a team environment because talking things out, leaning on each other, and working collaboratively are so crucial to anyone success ". ', style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  // fontStyle: FontStyle.italic,
                                ),),
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
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: CircleAvatar(
                                radius: 60.0,
                                backgroundImage: NetworkImage('https://static.wikia.nocookie.net/dfairies/images/f/fb/Rosetta-Profile2.jpg/revision/latest/top-crop/width/360/height/450?cb=20170729060713'),
                              ),
                            ),
                            Text('Abcde', style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontStyle: FontStyle.italic
                            ),),
                            Text('12345', style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontStyle: FontStyle.italic
                            ),),
                            Padding(
                              padding: const EdgeInsets.all(22.0),
                              child: Center(
                                child: Text('"All in all, I know the importance of a team, and I work very well in a collaborative environment". ', style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                ),),
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
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: CircleAvatar(
                                radius: 60.0,
                                backgroundImage: NetworkImage('https://static.wikia.nocookie.net/disney/images/4/47/Profile_-_Terence.png/revision/latest?cb=20210228093228'),
                              ),
                            ),
                            Text('Abcde', style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontStyle: FontStyle.italic
                            ),),
                            Text('12345', style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontStyle: FontStyle.italic
                            ),),
                            Padding(
                              padding: const EdgeInsets.all(22.0),
                              child: Center(
                                child: Text('"I value a team environment because talking things out, leaning on each other, and working collaboratively are so crucial to anyone success ". ', style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),),
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
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: CircleAvatar(
                                radius: 60.0,
                                backgroundImage: NetworkImage('https://i.pinimg.com/originals/f5/a9/6e/f5a96efa8a1eee6a2f1c251090580496.jpg'),
                              ),
                            ),
                            Text('Abcde', style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontStyle: FontStyle.italic
                            ),),
                            Text('12345', style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontStyle: FontStyle.italic
                            ),),
                            Padding(
                              padding: const EdgeInsets.all(22.0),
                              child: Center(
                                child: Text('"I value a team environment because talking things out, leaning on each other, and working collaboratively are so crucial to anyone success". ', style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                ),),
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
        )
    );
  }
}
