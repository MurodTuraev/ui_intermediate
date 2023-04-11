import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id='home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _iosDialog(){
    showCupertinoDialog(context: context,
        builder: (context) => CupertinoAlertDialog(
          title: Text('LogOut'),
          content: Text('Rostdan ham chiqmoqchimisiz?'),
          actions: [
            CupertinoDialogAction(
              child: Text('YOQ'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            CupertinoDialogAction(child: Text('HA'),
            onPressed: () => Navigator.of(context).pop(),)
          ],
        )
    );
  }

  void _androidDialog(){
    showDialog(context: context, builder: (BuildContext){
      return AlertDialog(
        title: Text('LogOut'),
        content: Text('Rostdan ham chiqmoqchimisiz?'),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          },
              child: Text('YOQ'),
          ),
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          },
            child: Text('HA'),
          )
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('HOME PAGE'),
          onPressed: (){
            if(Platform.isAndroid){
              _androidDialog();
            }else if(Platform.isIOS){
              _iosDialog();
            }
          },
        )
      ),
    );
  }
}
