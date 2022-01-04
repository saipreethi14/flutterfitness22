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
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text('Our Team', style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'MonteCarlo',
                  ),),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0, right: 1.0, left: 10.0),
                  child: Text('We are continuously trying to improve our work to provide the user an awesome experience. Our goal is to give better and relevant experience to our customers.', style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    // fontFamily: 'MonteCarlo',
                  ),),
                ),
              ),
              Container(
                height: 380,
                color: Colors.grey,
                margin: const EdgeInsets.symmetric(vertical: 10.0),
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
                                backgroundImage: NetworkImage('https://www.nicepng.com/png/detail/258-2587185_kanchan-professional-young-woman-png.png'),
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
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQyO41XHnhQ30L8YgqmGaJ85h2sHalqtAsOw&usqp=CAU'),
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
                                backgroundImage: NetworkImage('https://img.favpng.com/9/19/21/businessperson-company-leadership-image-sales-png-favpng-yVH49h629HvJ6vg55yttGkbqv.jpg'),
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
                                backgroundImage: NetworkImage('https://pinnacletekeducator.com/wp-content/uploads/2021/05/depositphotos_12485614-stock-photo-asian-businesswoman-with-tablet-computer.jpg'),
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
