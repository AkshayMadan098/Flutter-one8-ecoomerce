import 'package:flutter/material.dart';
import 'package:one8/SplashPage.dart';

import 'Home.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "One8",
      theme: ThemeData(
        primarySwatch: Colors.redAccent[600],
        
      ),
      home: SplashPage()
    );
  }
}