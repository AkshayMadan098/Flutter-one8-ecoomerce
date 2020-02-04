
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:one8/Home.dart';

import 'SignUp.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  AssetImage imageTwo = AssetImage("asset/download2.png");
  

 final FirebaseAuth _auth = FirebaseAuth.instance;
      TextEditingController email=TextEditingController();
    TextEditingController password=TextEditingController();

  login() async {
    final FirebaseUser user = (await _auth.signInWithEmailAndPassword(
      email: email.text,
      password: password.text,
    ))
        .user;
        print(user);
                 {Navigator.pushReplacement(context, 
                    MaterialPageRoute(builder: (context) =>Home() )
                  );
                }
  }

@override
  void initState() {
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body:  Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(33, 60, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Image(
                      image: imageTwo,
                      height: 60,
                      width: 60,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(33, 10, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Welcome,",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(33, 4, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Sign in to continue",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 50, 30, 2),
                    child: TextField(
                      controller: email,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                          
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
                child: TextField(
                  controller: password,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 25, 0, 5),
                child: MaterialButton(
                  minWidth: 320,
                  height: 50,
                  onPressed: () =>login(),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.blue,
                ),
              ),
              Divider(
                indent: 37,
                color: Colors.white,
                endIndent: 37,
                thickness: 2,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 20),
                child: MaterialButton(
                  minWidth: 320,
                  height: 50,
                  onPressed: () =>SignUp(),
                  child: Text(
                    "Create account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.blue,
                ),
              ),
                           ],
        ),
      ),
          
    );
  }
}