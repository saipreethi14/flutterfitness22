import 'package:ff/HomePage.dart';
import 'package:ff/SignInPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.fitness_center),
        ),
        title: Text('GET SET GO'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 80, 8, 8),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User EmailID',
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Retype-your Password again',
                  hintText: 'Enter Password',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (Context) => Homepage()));
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Acoount created"),
                    ));
                  },
                )),
            Container(
                child: Row(
                  children: <Widget>[
                    Text('Do you  have account?'),
                    FlatButton(
                      textColor: Colors.black,
                      child: Text(
                        'Sign IN',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //signIN screen
                        Navigator.push(context, MaterialPageRoute(builder: (Context) => SignInPage()));
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )),
          ],
        ),
      ),
    );
  }
}
