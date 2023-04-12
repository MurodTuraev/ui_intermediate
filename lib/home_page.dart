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
      body: PageView(
        children: [
          Container(
            color: Colors.grey,
            child: Center(
              child: Text('Birinchi saxifa'),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('Ikkinchi saxifa'),
            ),
          ),
          Container(
            color: Colors.purple,
            child: Center(
              child: Text('Uchinchi saxifa'),
            ),
          )
        ],
      ),
      appBar: AppBar(
        title: Text('INS'),
      ),

    );
  }
}
