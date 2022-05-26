import 'package:basic_project_lab/talkRoom.dart';
import 'package:basic_project_lab/timeTable.dart';
import 'package:flutter/material.dart';

import 'mentoMatch.dart';

class talkRoom_3 extends StatefulWidget {
  const talkRoom_3({Key? key}) : super(key: key);

  @override
  _talkRoom_3State createState() => _talkRoom_3State();
}

class _talkRoom_3State extends State<talkRoom_3> {
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
          const SizedBox(height: 15.0),
          Container(
            height: 67.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              border: Border.all(color: const Color(0xff1C479B), width: 3),
              color: const Color(0xff1C479B),
            ),
            alignment: Alignment.centerLeft,
            child: const Text('     그루터기-홍수환', style: TextStyle(color: Colors.white, fontSize: 25)),
          ),
          const SizedBox(height: 10.0,),
          Row(
            children: [
              const SizedBox(width: 30.0,),
              Column(
                children: [
                  Image.asset('images/phone.jpg'),
                  const SizedBox(height: 100.0,),
                ],
              ),
              const SizedBox(width: 5.0,),
              Column(
                children: [
                  const SizedBox(height: 20.0,),
                  Image.asset('images/infor.png', width: 360.0, height: 180.0, fit: BoxFit.fill,),
                ],
              )
            ],
          ),
          const SizedBox(height: 20.0,),
          Row(
            children: [
              const SizedBox(width: 150.0,),
              Column(
                children: [
                  const SizedBox(height: 20.0,),
                  Image.asset('images/infom.png', width: 350.0, height: 90.0, fit: BoxFit.fill,),
                ],
              )
            ],
          ),
          const SizedBox(height: 240.0,),
          const SizedBox(height: 3.0,),
          Container(width: 1000, child: const Divider(thickness: 1.0,),),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10.0,),
              Container(height: 20.0, child: const VerticalDivider(thickness: 2.0, color: Colors.black,),),
              const SizedBox(width: 379.0,),
              const Icon(Icons.camera_alt_outlined),
              const SizedBox(width: 30.0,),
              Container(
                width: 50.0,
                height: 33.0,
                child: IconButton(
                  onPressed: (){},
                  icon: Image.asset('images/sub.jpg'),
                )
              )
            ],
          )
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
