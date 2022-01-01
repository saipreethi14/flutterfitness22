import 'package:ff/HomePage.dart';
import 'package:ff/SignInPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth_service.dart';

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
                controller: emailController,
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
                controller: passwordController,
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
                  labelText: 'Confirm Password',
                  hintText: 'Enter Password',
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text('Login'),
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
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Acoount created"),
                    ));
                  },
                )),
            //SizedBox(height: 10),
            Container(
                child: Row(
              children: <Widget>[
                Text('Already have an account ?'),
                FlatButton(
                    textColor: Colors.black,
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {
                      //signIN screen
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (Context) => SignInPage()));
                    })
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )),
          ],
        ),
      ),
    );
  }
}
