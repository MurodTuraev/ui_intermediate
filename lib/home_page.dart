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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INS demo'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Home Page', style: TextStyle(color: Colors.green, fontSize: 32),),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: ()=> print('Open'),
        onClose: ()=> print('Close'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.accessibility),
            backgroundColor: Colors.redAccent,
            label: 'Birinchi',
            labelStyle: TextStyle(fontSize: 20),
            onTap: ()=> print('Birinchi')
          ),
          SpeedDialChild(
              child: Icon(Icons.podcasts),
              backgroundColor: Colors.green,
              label: 'Ikkinchi',
              labelStyle: TextStyle(fontSize: 20),
              onTap: ()=> print('Ikkinchi')
          ),
          SpeedDialChild(
              child: Icon(Icons.face),
              backgroundColor: Colors.grey,
              label: 'Uchinchi',
              labelStyle: TextStyle(fontSize: 20),
              onTap: ()=> print('Uchinchi')
          )
        ],
      ),
    );
  }

}
