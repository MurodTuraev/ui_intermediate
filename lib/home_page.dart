import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id='home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  String _email='', _password='', _name='';
  void _doSignIn(){
    // print(_formKey.currentState.mounted);
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      print('Welcome');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Center(
                    child: Text('Instagram', style: TextStyle(fontSize: 32, color: Colors.black),)
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Name'
                  ),
                  validator: (input) => input.toString().length < 4 ? 'NO': null,
                  onSaved: (input) => _name=input.toString(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email'
                  ),
                  validator: (input) => !input.toString().contains('@') ? 'NO': null,
                  onSaved: (input) => _email=input.toString(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password'
                  ),
                  validator: (input) => input.toString().length<4 ? 'Kamida 4 ta belgi bolishi kerak': null,
                  onSaved: (input) => _password=input.toString(),
                ),
              ),
              Container(
                margin: EdgeInsets.all(30),
                width: double.infinity,
                // height: 50,
                color: Colors.blue,
                child: TextButton(
                  onPressed: (){
                    _doSignIn();
                  },
                  child: Text('Sign Up', style: TextStyle(backgroundColor: Colors.blue, color: Colors.white, fontSize: 18),),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an accaunt?", style: TextStyle(color: Colors.black38),),
                    TextButton(
                      onPressed: (){},
                      child: Text("Log in"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
