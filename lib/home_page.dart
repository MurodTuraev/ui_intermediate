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
      body: ListView(
        children: [
          _itemList(title: 'BMT', image: 'assets/images/images.jpeg'),
          _itemList(title: 'BMT', image: 'assets/images/images.jpeg'),
          _itemList(title: 'BMT', image: 'assets/images/images.jpeg'),
          _itemList(title: 'BMT', image: 'assets/images/images.jpeg'),
          _itemList(title: 'BMT', image: 'assets/images/images.jpeg'),
          _itemList(title: 'BMT', image: 'assets/images/images.jpeg'),
          _itemList(title: 'BMT', image: 'assets/images/images.jpeg'),
          _itemList(title: 'BMT', image: 'assets/images/images.jpeg'),
          _itemList(title: 'BMT', image: 'assets/images/images.jpeg'),
        ],
      ),
      appBar: AppBar(
        title: Text('INS'),
      ),

    );
  }

  Widget _itemList({title, image}){
    return Container(
      height: 107,
      width: 107,
      color: Colors.grey,
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: 70,
            height: 70,
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          SizedBox(
            height: 20,
          ),
          Text(title)
        ],
      ),
    );
  }
}
