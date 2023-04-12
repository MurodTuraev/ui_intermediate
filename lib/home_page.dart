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
  PageController _pageController = new PageController();
  int _selectedPage = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index){
          setState(() {
            _selectedPage = index;
          });
        },
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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message', backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video_outlined), label: 'Video', backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notification', backgroundColor: Colors.purpleAccent),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        backgroundColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (int index){
          setState(() {
            _selectedPage = index;
            _pageController.animateToPage(index, duration: Duration(microseconds: 200), curve: Curves.easeIn);
          });
        },
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<PageController>('_pageController', _pageController));
  }
}
