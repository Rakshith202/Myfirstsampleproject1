import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseproject/services/usermanagement.dart';

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String _email;
  String _password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            padding:EdgeInsets.all(25.0),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(hintText: 'Email'),
                  onChanged: (value){
                    setState(() {
                      _email=value;
                    });
                  },
                ),

                SizedBox(height: 15,),
                TextField(
                  decoration:InputDecoration(hintText: 'Password'),
                  obscureText: true,
                  onChanged: (value){
                    setState(() {
                      _password=value;
                    });
                  },
                ),
                SizedBox(height: 20.0,),
                RaisedButton(
                  child: Text('signup'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 7.0,
                  onPressed: (){
                   FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password).then((signedInUser){
                     UserManagement().storeNewUser(signedInUser, context);
                   }).catchError((e){
                     print(e);
                   });
                  },
                ),


              ],
            )
        ),
      ),
    );
  }
}
