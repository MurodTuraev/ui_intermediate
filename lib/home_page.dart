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
        title: Text('INS demo'),
      ),
      backgroundColor: Colors.grey,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100)
              ),
              width: double.infinity,
              child: TextField(
                onChanged: (value){},
                style: TextStyle(fontSize: 15, color: Colors.black54),
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.phone_iphone,
                    color: Colors.grey,
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}
