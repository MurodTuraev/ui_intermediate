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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

      ),
      appBar: AppBar(
        title: Text('INS'),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              color: Colors.black12,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Murod Turaev', style: TextStyle(color: Colors.blue),),
                  Text('murod.turaev@gmail.com', style: TextStyle(color: Colors.blue),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
