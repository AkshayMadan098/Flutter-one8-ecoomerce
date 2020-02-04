import 'package:flutter/material.dart';
import 'package:one8/Home.dart';
import 'package:one8/Login.dart';

import 'package:splashscreen/splashscreen.dart';

import 'SignUp.dart';


class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => new _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      
      imageBackground: AssetImage("asset/download2.png"),
      seconds: 5,
      navigateAfterSeconds: Home(),
      
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.white
    );
  }
}
