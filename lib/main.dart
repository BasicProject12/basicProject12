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
  final List<Widget> _children = [const Mento(), const Home(), const Graph()];

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
          type: BottomNavigationBarType.fixed,
          onTap: _onTap,
          currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
              icon: const Icon(Icons.fiber_manual_record),
              label: "멘토 신청",
            ),
            new BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: "메인",
            ),
            new BottomNavigationBarItem(
              icon: const Icon(Icons.graphic_eq),
              label: "성적 그래프",
            )
          ],
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: const FloatingActionButton(
          child: Icon(Icons.call_outlined),
          tooltip: "전화 연결",
          onPressed: null,
        ),
    );

  }


}
