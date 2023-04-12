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
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        title: Text('INS Demo'),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home),text: 'Home',),
            Tab(icon: Icon(Icons.school),text: 'School',),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Container(
            color: Colors.green,
            child: Center(
              child: Text('Birinchi sahifa', style: TextStyle(color: Colors.white, fontSize: 24),),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('Ikkinchi sahifa', style: TextStyle(color: Colors.redAccent, fontSize: 24),),
            ),
          )
        ],
      ),
    ),
    );

  }

}
