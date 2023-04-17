// import 'dart:html';
import 'dart:io';
// import 'dart:js';

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

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation _animation ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(microseconds: 1200));
    _animation = Tween<Size>(
      begin: Size(100.0,100.0),
      end: Size(150.0,150.0),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.bounceIn)
    );

    _controller.addStatusListener((status) {
      if(status==AnimationStatus.completed){
        _controller.repeat();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (ctx,ch)=>Container(
            height: _animation.value.height,
            width: _animation.value.width,
            child: Image.asset('assets/images/heart.jpg'),
          ),
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: (){
          _controller.forward();
        },
      ),
    );
  }

}
