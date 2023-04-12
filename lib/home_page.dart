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
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: ListView(
        children: [
          _itemList(name: 'Murod', date: '20:18', data: 'Bugun yigilish bor'),
          _itemList(name: 'Shaxzodbek', date: '12:32', data: 'Ishlar yaxshimi?'),
          _itemList(name: 'Jonibek', date: '09:45', data: 'Tugilgan kuning bilan'),
          _itemList(name: 'Aziz', date: '01:13', data: 'Bugun boramiz'),
          _itemList(name: 'Nodir', date: '22:01', data: 'Otgan darsni aytib yubor'),
        ],

      ),
    );
  }

  Widget _itemList({name, date, data}){
    return Container(
      padding: EdgeInsets.all(5),
      // height: 300,
      width: 60,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image: AssetImage('assets/images/images.jpeg'),
                height: 50,
                width: 50,
              ),
          )),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 290,
                  child: Row(
                    children: [
                      Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text(date, style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
                Text(data, style: TextStyle(fontSize: 16),)
              ],
            ),
          ),
          Container(
            child: Icon(
              Icons.chevron_right
            ),
          )
        ],
      ),
    );
  }

}
