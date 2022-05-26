import 'dart:ui';

import 'package:basic_project_lab/talkRoom.dart';
import 'package:basic_project_lab/talkRoom_3.dart';
import 'package:basic_project_lab/timeTable.dart';
import 'package:flutter/material.dart';

import 'mentoMatch.dart';

class talkRoom_2 extends StatefulWidget {
  const talkRoom_2({Key? key}) : super(key: key);

  @override
  _talkRoom_2State createState() => _talkRoom_2State();
}

class _talkRoom_2State extends State<talkRoom_2> {

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
          const SizedBox(height: 40.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120.0,
                height: 37.0,
                child: OutlinedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const talkRoom()));
                  },
                  child: const Text('대화상대 목록', style: TextStyle(color: Color(0xff1C479B), fontSize: 15.0),),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1.2, color: Color(0xff1C479B)),
                    backgroundColor: Colors.white,
                    primary: const Color(0xff1C479B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30.0,),
              Container(
                height: 37.0,
                child: OutlinedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const talkRoom_2()));
                  },
                  child: const Text('채팅방', style: TextStyle(color: Colors.white, fontSize: 15.0),),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1.2, color: Color(0xff1C479B)),
                    backgroundColor: const Color(0xff1C479B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0,),
          Container(width: 1000, child: const Divider(thickness: 1.0,),),
          const SizedBox(height: 3.0,),
          Row(
            children: [
              const SizedBox(width: 40.0,),
              Image.asset('images/phone.jpg'),
              Column(
                children:  [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(width: 50.0,),
                      Text('한마음교육봉사단-김택근', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
                      SizedBox(width: 148.0,),
                      Text('오후 02:10', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w100),),
                    ],
                  ),
                  const SizedBox(height: 2.0,),
                  Row(
                    children: const [
                      Text('안녕하세요, 김학생님! 수학 멘토링 신청해주셔서 시간대 확정 관련 메세...', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 11.0),)
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 3.0,),
          Container(width: 1000, child: const Divider(thickness: 1.0,),),
          const SizedBox(height: 3.0,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => talkRoom_3()),
              );
            },
            child: Row(
              children: [
                const SizedBox(width: 40.0,),
                Image.asset('images/phone.jpg'),
                Column(
                  children:  [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(width: 50.0,),
                        Text('그루터기-홍수환', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
                        SizedBox(width: 211.0,),
                        Text('오전 11:42', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w100),),
                      ],
                    ),
                    const SizedBox(height: 2.0,),
                    Row(
                      children: const [
                        Text('아, 안녕하세요! 신청받아주셔서 감사합니다! 열심히 활동해서 꼭 성적...', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 11.0),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 3.0,),
          Container(width: 1000, child: const Divider(thickness: 1.0,),),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: _onTap,
        currentIndex: 2,
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
