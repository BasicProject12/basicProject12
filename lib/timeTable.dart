import 'package:basic_project_lab/talkRoom.dart';
import 'package:basic_project_lab/timeTable_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mentoMatch.dart';

class timeTable extends StatefulWidget {
  const timeTable({Key? key}) : super(key: key);

  @override
  _timeTableState createState() => _timeTableState();
}

class _timeTableState extends State<timeTable> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const Mento(),
    const timeTable(),
    const talkRoom()
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => _children[index]),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      color: Colors.white,
      icon: Image.asset('images/back.jpg'),
    ),
      elevation: 0.0,
    ),
      body: Column(
        children: [
          const SizedBox(
            height: 35.0,
          ),
          Row(
            children: [
              const SizedBox(width: 185.0,),
              Container(
                width: 67.0,
                height: 35.0,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xff1C479B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const timeTable()),
                    );
                  },
                  child: const Text('평일', style: TextStyle(color: Colors.white, fontSize: 16.0), ),
                ),
              ),
              const SizedBox(width: 20.0,),
              Container(
                width: 67.0,
                height: 35.0,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const timeTable_2()),
                    );
                  },
                  child: const Text('주말', style: TextStyle(color: Color(0xff1C479B), fontSize: 16.0),),
                ),
              )
            ],
          ),
          const SizedBox(height: 35.0,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: const Alignment(0.0, 0.0),
                    width: 62.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      border: Border.all(color: const Color(0xff1C479B), width: 3),
                      color: const Color(0xff1C479B),
                    ),
                    child: const Text('월', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, color: Colors.white),),
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: const Alignment(0.0, 0.0),
                    width: 62.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff1C479B), width: 3),
                      color: const Color(0xff1C479B),
                    ),
                    child: const Text('화', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, color: Colors.white),),
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: const Alignment(0.0, 0.0),
                    width: 62.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff1C479B), width: 3),
                      color: const Color(0xff1C479B),
                    ),
                    child: const Text('수', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, color: Colors.white),),
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: const Alignment(0.0, 0.0),
                    width: 62.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff1C479B), width: 3),
                      color: const Color(0xff1C479B),
                    ),
                    child: const Text('목', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, color: Colors.white),),
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: const Alignment(0.0, 0.0),
                    width: 62.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      border: Border.all(color: const Color(0xff1C479B), width: 3),
                      color: const Color(0xff1C479B),
                    ),
                    child: const Text('금', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, color: Colors.white),),
                  ),
                ],
              ),
              // 타임
              Row(
                children: [
                  const SizedBox(
                    width: 45.9,
                  ),
                  const SizedBox(
                    width: 50.0,
                    height: 75.0,
                    child: Text('PM02', textAlign: TextAlign.center, style: TextStyle(color: Color(0xff1C479B), fontSize: 16.0),),
                  ),
                  Container(
                    alignment: const Alignment(0.0, 0.0),
                    width: 62.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                      color: Colors.white,
                    ),
                    child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(

                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 45.9,
                  ),
                  const SizedBox(
                    width: 50.0,
                    height: 75.0,
                    child: Text('PM03', textAlign: TextAlign.center, style: TextStyle(color: Color(0xff1C479B), fontSize: 16.0),),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(

                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 45.9,
                  ),
                  const SizedBox(
                    width: 50.0,
                    height: 75.0,
                    child: Text('PM04', textAlign: TextAlign.center, style: TextStyle(color: Color(0xff1C479B), fontSize: 16.0),),
                  ),
                  Container(
                      alignment: const Alignment(-1.0, -1.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                        ),
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: const Color(0xff1C479B),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('수학', style: TextStyle(fontSize: 17.0, color: Colors.white),),
                          Text('한마음\n교육봉사단', style: TextStyle(fontSize: 10.0, color: Colors.white),),
                        ],
                      )
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(-1.0, -1.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: const Color(0xff1C479B),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('수학', style: TextStyle(fontSize: 17.0, color: Colors.white),),
                          Text('한마음\n교육봉사단', style: TextStyle(fontSize: 10.0, color: Colors.white),),
                        ],
                      )
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(

                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 45.9,
                  ),
                  const SizedBox(
                    width: 50.0,
                    height: 75.0,
                    child: Text('PM05', textAlign: TextAlign.center, style: TextStyle(color: Color(0xff1C479B), fontSize: 16.0),),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                        ),
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: const Color(0xff1C479B),
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: const Color(0xff1C479B),
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(

                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 45.9,
                  ),
                  const SizedBox(
                    width: 50.0,
                    height: 75.0,
                    child: Text('PM06', textAlign: TextAlign.center, style: TextStyle(color: Color(0xff1C479B), fontSize: 16.0),),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(

                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 45.9,
                  ),
                  const SizedBox(
                    width: 50.0,
                    height: 75.0,
                    child: Text('PM07', textAlign: TextAlign.center, style: TextStyle(color: Color(0xff1C479B), fontSize: 16.0),),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(

                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 45.9,
                  ),
                  const SizedBox(
                    width: 50.0,
                    height: 75.0,
                    child: Text('PM08', textAlign: TextAlign.center, style: TextStyle(color: Color(0xff1C479B), fontSize: 16.0),),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(

                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                  Container(
                    width: 2.0,
                    height: 75.0,
                    color: const Color(0xff1C479B),
                  ),
                  Container(
                      alignment: const Alignment(0.0, 0.0),
                      width: 62.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        border: Border.all(color: const Color(0xff1C479B), width: 1.2),
                        color: Colors.white,
                      ),
                      child: Container()
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: _onTap,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('images/search.jpg'),),
            label: "멘토 신청",
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('images/timeTable.jpg'),),
            label: "멘토링 시간표",
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


