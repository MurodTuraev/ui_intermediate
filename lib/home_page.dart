import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id='home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  String _email='', _password='';
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
      appBar: AppBar(
        title: Text('INS demo'),
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email'
                ),
                validator: (input) => !input.toString().contains('@') ? 'Notogri kiriting' : null,
                onSaved: (input) => _email=input.toString(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password'
                ),
                validator: (input) => input.toString().length<6 ? 'parol uzunligi 6 dan kop bolishi kerak' : null,
                onSaved: (input) => _password=input.toString(),
              ),
            ),
            TextButton(
              onPressed: (){
                _doSignIn();
              },
              child: Text('Sign in', style: TextStyle(color: Colors.redAccent, fontSize: 18),) ,
            )
          ],
        ),
      ),
    );
  }

}
