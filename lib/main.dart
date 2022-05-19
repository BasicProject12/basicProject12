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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 200.0,),
          Row(
            children: const <Widget> [
              SizedBox(width: 90.0,),
              Text('환영합니다!', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
            ],
          ),
          const SizedBox(height: 20.0,),
          Row(
            children: const [
              SizedBox(width: 150.0,),
              Text('당신은..', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
            ],
          ),
          const SizedBox(height: 20.0,),
          SizedBox (
            width: 110.0,
            child: OutlinedButton(
              onPressed: () {  },
              child: const Text('멘티', style: TextStyle(color: Colors.black),),
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color(0xffF0F0F0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0,),
          SizedBox(
            width: 110.0,
            child: OutlinedButton(
              onPressed: () {  },
              child: const Text('멘토', style: TextStyle(color: Colors.black),),
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color(0xffF0F0F0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


}
