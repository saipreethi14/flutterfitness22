import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'HomePage.dart';
import 'SignUpPage.dart';
import 'auth_service.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                  hintText: 'Enter Your EmailID',
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
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text('Login'),
                  onPressed: () {
                    // ignore: non_constant_identifier_names
                    final String email = emailController.text.trim();
                    final String password = passwordController.text.trim();

                    if(email.isEmpty){
                    print("Email is Empty");
                    } else {
                      if (password.isEmpty) {
                        print("Password is Empty");
                      }else {
                        context.read<AuthService>().login(
                          email,
                          password,
                        );
                        print(email + "Logged in");
                      }
                    }
                  },
                )
            ),
            Container(
                child: Row(
                  children: <Widget>[
                    Text('Does not have account?'),
                    FlatButton(
                      textColor: Colors.black,
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //signup screen
                        Navigator.push(context, MaterialPageRoute(builder: (Context) => SignUpPage()));
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )),
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text('LOGIN WITH FACEBOOK'),
                  onPressed: () {
                  },
                )),
          ],
        ),
      ),
    );
  }
}
