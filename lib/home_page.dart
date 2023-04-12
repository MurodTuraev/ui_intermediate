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
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.lightBlue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: AssetImage('assets/images/images.jpeg'), height: 100, width: 100,
                        ),
                      ),
                      padding: EdgeInsets.only(bottom: 10),
                    ),
                    Text('Murod Turaev', style: TextStyle(fontSize: 20, color: Colors.white),),
                    Text('abc@gmail.com', style: TextStyle(fontSize: 20, color: Colors.white),),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.home
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Text('Home', style: TextStyle(fontSize: 18),),
                          )
                        ],
                      ),

                    ),
                    TextButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                                Icons.person
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Text('Profile', style: TextStyle(fontSize: 18),),
                          )
                        ],
                      ),

                    ),
                    TextButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                                Icons.people
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Text('About us', style: TextStyle(fontSize: 18),),
                          )
                        ],
                      ),

                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}
