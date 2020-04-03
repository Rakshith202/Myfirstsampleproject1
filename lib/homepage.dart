import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dash board"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Text("You are now logged in"),
              SizedBox(height: 15.0,),
              OutlineButton(
                borderSide: BorderSide(
                  color: Colors.red,
                  style: BorderStyle.solid,width: 3.0
                ),
                child:Text("Log out"),
                onPressed: (){
                  FirebaseAuth.instance.signOut().then((value){}).catchError((e){print(e);});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
