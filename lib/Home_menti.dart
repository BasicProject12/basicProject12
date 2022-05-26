import 'package:basic_project_lab/talkRoom.dart';
import 'package:basic_project_lab/timeTable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bookOfStu.dart';
import 'graph.dart';
import 'mentoMatch.dart';

class Home_menti extends StatefulWidget {
  const Home_menti({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home_menti> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const Mento(),
    const timeTable(),
    const talkRoom()
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: _children[_currentIndex],


    );
  }
}
