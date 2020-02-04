import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'Login.dart';



class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
 
  AssetImage imageTwo = AssetImage("asset/download2.png");
  

 final FirebaseAuth _auth = FirebaseAuth.instance;
      TextEditingController email=TextEditingController();
    TextEditingController password=TextEditingController();

  signup() async {
    final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
      email: email.text,
      password: password.text,
    ))
        .user;
        print(user);
                 {Navigator.push(context, 
                    MaterialPageRoute(builder: (context) =>LoginPage() )
                  );
                }
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: Container(
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
              margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: TextField(
                controller: email,
                style: TextStyle(
                  color: Colors.white,
                ),
                
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  border: OutlineInputBorder(),
                  
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
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
                onPressed: () =>signup(),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.blue,
              ),
            ),
            GestureDetector(
              onTap: () =>LoginPage(),
                          child: Container(
                margin: EdgeInsets.only(top: 30),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Already registered Log In ",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                          
                      
                    ]
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}