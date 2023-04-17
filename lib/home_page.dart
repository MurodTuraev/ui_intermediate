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
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                      image: DecorationImage(
                        image: AssetImage('assets/images/images.jpeg'),
                        fit: BoxFit.cover,
                      ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.9),
                            Colors.white.withOpacity(0.8),
                            Colors.white.withOpacity(0.4),
                            Colors.white.withOpacity(0.2),
                          ],
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 160, left: 50),
                  child: Text('PDP Online', style: TextStyle(color: Colors.black, fontSize: 28),),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                      image: DecorationImage(
                        image: AssetImage('assets/images/images.jpeg'),
                        fit: BoxFit.cover,
                      ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.9),
                            Colors.white.withOpacity(0.8),
                            Colors.white.withOpacity(0.4),
                            Colors.white.withOpacity(0.2),
                          ],
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 160, left: 50),
                  child: Text('PDP Online', style: TextStyle(color: Colors.black, fontSize: 28),),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                      image: DecorationImage(
                        image: AssetImage('assets/images/images.jpeg'),
                        fit: BoxFit.cover,
                      ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.9),
                            Colors.white.withOpacity(0.8),
                            Colors.white.withOpacity(0.4),
                            Colors.white.withOpacity(0.2),
                          ],
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 160, left: 50),
                  child: Text('PDP Online', style: TextStyle(color: Colors.black, fontSize: 28),),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }

}
