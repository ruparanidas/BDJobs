import 'package:flutter/material.dart';
import 'package:ui_design/l_home.dart';
import 'package:ui_design/m_hot_job.dart';
import 'package:ui_design/n_lorem.dart';
import 'package:ui_design/p_more.dart';
import 'package:ui_design/s_shortlisted.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 0;
  List<Widget> pages = [home(), HotJob(), Shortlisted(), Lorem(), More()];
  //pages[_currentindex],
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department),
              label: 'Hot Jobs',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'SHortList',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Lorem',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
              backgroundColor: Colors.green),
        ],
        onTap: (int index) {
          setState(() {
            _currentindex = index;
          });
        },
        currentIndex: _currentindex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        elevation: 1,
      ),
      body: pages[_currentindex],
    );
  }
}
