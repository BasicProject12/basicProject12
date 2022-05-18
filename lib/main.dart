import 'package:basic_project_lab/bookOfStu.dart';
import 'package:basic_project_lab/talkRoom.dart';
import 'package:basic_project_lab/timeTable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:basic_project_lab/mentoMatch.dart';

import 'Home.dart';
import 'graph.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  final List<Widget> _children = [const Mento(), const bookOfStudent(), const timeTable(), const Graph(), const talkRoom()];

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
        bottomNavigationBar: BottomNavigationBar (
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: _onTap,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Image(image: AssetImage('images/search.jpg'),),
              label: "멘토 신청",

            ),
            BottomNavigationBarItem(
              icon: Image(image: AssetImage('images/book.jpg'),),
              label: "일지 작성",
            ),
            BottomNavigationBarItem(
              icon: Image(image: AssetImage('images/timeTable.jpg'),),
              label: "멘토링 시간표",
            ),
            BottomNavigationBarItem(
              icon: Image(image: AssetImage('images/graph.jpg'),),
              label: "성적 그래프",
            ),
            BottomNavigationBarItem(
              icon: Image(image: AssetImage('images/talkRoom.jpg'),),
              label: "채팅방",
            ),
          ],
      ),

    );

  }


}
