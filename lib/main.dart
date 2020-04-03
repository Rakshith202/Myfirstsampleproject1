import 'package:flutter/material.dart';
//pages
import 'homepage.dart';
import 'loginpage.dart';
import 'signuppage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes:<String,WidgetBuilder>{
        '/landingpage':(BuildContext context)=>MyApp(),
        '/signup':(BuildContext context)=>Signup(),
        '/homepage':(BuildContext context)=>Home(),
      }
    );
  }
}
