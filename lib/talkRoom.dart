import 'package:basic_project_lab/talkRoom_2.dart';
import 'package:basic_project_lab/timeTable.dart';
import 'package:flutter/material.dart';

import 'mentoMatch.dart';

class talkRoom extends StatefulWidget {
  const talkRoom({Key? key}) : super(key: key);

  @override
  _talkRoomState createState() => _talkRoomState();
}

class _talkRoomState extends State<talkRoom> {

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
                  child: const Text('대화상대 목록', style: TextStyle(color: Colors.white, fontSize: 15.0),),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1.2, color: Color(0xff1C479B)),
                    backgroundColor: const Color(0xff1C479B),
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
                  child: const Text('채팅방', style: TextStyle(color: Color(0xff1C479B), fontSize: 15.0),),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1.2, color: Color(0xff1C479B)),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20.0,),
          Container(width: 1000, child: const Divider(thickness: 1.0,),),
          const SizedBox(height: 12.0,),
          Row(
            children: [
              const SizedBox(width: 40.0,),
              Image.asset('images/people.jpg'),
              const SizedBox(width: 30.0,),
              const Text('김학생', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),),
            ],
          ),
          const SizedBox(height: 12.0,),
          Container(width: 1000, child: const Divider(thickness: 1.0,),),
          const SizedBox(height: 7.0,),
          Row(
            children: const [
              SizedBox(width: 90.0,),
              Text('교육단체명'),
              SizedBox(width: 240.0,),
              Text('신청과목'),
            ],
          ),
          const SizedBox(height: 7.0,),
          Container(width: 1000, child: const Divider(thickness: 1.0,),),
          const SizedBox(height: 3.0,),
          Row(
            children: [
              const SizedBox(width: 40.0,),
              Image.asset('images/smile.jpg'),
              const SizedBox(width: 15.0,),
              const Text('한마음교육봉사단', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),),
              const SizedBox(width: 223.0,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('수학'),
                  SizedBox(height: 10.0,),
                  Text('과학'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 3.0,),
          Container(width: 1000, child: const Divider(thickness: 1.0,),),
          const SizedBox(height: 3.0,),
          Row(
            children: [
              const SizedBox(width: 40.0,),
              Image.asset('images/smile.jpg'),
              const SizedBox(width: 15.0,),
              const Text('그루터기', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),),
              const SizedBox(width: 277.6,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('국어'),
                ],
              ),
            ],
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
