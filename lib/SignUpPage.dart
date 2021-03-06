import 'package:ff/HomePage.dart';
import 'package:ff/SignInPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_service.dart';

//this page will direct creates an account for a user and store user data in firebase authentication

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

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
          style: TextStyle(fontSize: 22, fontFamily: 'Aleo'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        backgroundColor: Color(0xFF660000),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 40, 8, 8),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF660000), width: 2.0),
                  ),
                  labelText: 'User Email id',
                  labelStyle: TextStyle(
                    fontFamily: 'Aleo',
                    color: Color(0xFF660000),
                  ),
                  hintText: 'Enter Your email',
                  hintStyle: TextStyle(
                    fontFamily: 'Aleo',
                    color: Color(0xFF805D5D),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF660000), width: 2.0),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontFamily: 'Aleo',
                    color: Color(0xFF660000),
                  ),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(
                    fontFamily: 'Aleo',
                    color: Color(0xFF805D5D),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF660000), width: 2.0),
                  ),
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(
                    fontFamily: 'Aleo',
                    color: Color(0xFF660000),
                  ),
                  hintText: 'Retype Password',
                  hintStyle: TextStyle(
                    fontFamily: 'Aleo',
                    color: Color(0xFF805D5D),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Color(0xFF660000),
                child: Text(
                  'Sign up',
                  style: TextStyle(fontFamily: 'Aleo', fontSize: 16),
                ),
                onPressed: () {
                  final String email = emailController.text.trim();
                  final String password = passwordController.text.trim();

                  if (email.isEmpty) {
                    print("Email is Empty");
                  } else {
                    if (password.isEmpty) {
                      print("Password is Empty");
                    } else {
                      context.read<AuthService>().Signup(
                            email,
                            password,
                          );
                    }
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Acoount created",
                        style: TextStyle(
                          fontFamily: 'Aleo',
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Color(0xFF660000),
                    ),
                  );
                },
              ),
            ),
            //SizedBox(height: 10),
            Container(
              child: Row(
                children: <Widget>[
                  Text(
                    'Already have an account ?',
                    style: TextStyle(
                      fontFamily: 'Aleo',
                      fontSize: 16,
                      color: Color(0xFF660000),
                    ),
                  ),
                  FlatButton(
                    textColor: Color(0xFF660000),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Aleo',
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      //signIN screen
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (Context) => SignInPage()));
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
