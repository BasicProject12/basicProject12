import 'package:basic_project_lab/talkRoom.dart';
import 'package:basic_project_lab/timeTable.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'mentoMatch.dart';
import 'mentoMatch_3.dart';

class mento_2 extends StatefulWidget {
  const mento_2({Key? key}) : super(key: key);

  @override
  _mento_2State createState() => _mento_2State();
}

class _mento_2State extends State<mento_2> {
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

  /*final List<ChartData> chartData = [
    ChartData('David', 25, Colors.white),
  ];*/

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
        children: <Widget> [
          const SizedBox(height: 200.0,),
          const Center(
            child: Text('교육 가능 시간을 입력해주세요.', style: TextStyle(fontSize: 20),),
          ),
          const SizedBox(height: 40.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all(style: BorderStyle.solid),
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 8),
                        )
                      ],
                    ),
                    width: 40.0,
                    height: 40.0,
                    child: const Text('월'),
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20.0,),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all(style: BorderStyle.solid),
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 8),
                        )
                      ],
                    ),
                    width: 40.0,
                    height: 40.0,
                    child: const Text('화'),
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20.0,),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all(style: BorderStyle.solid),
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 8),
                        )
                      ],
                    ),
                    width: 40.0,
                    height: 40.0,
                    child: const Text('수'),
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20.0,),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all(style: BorderStyle.solid),
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 8),
                        )
                      ],
                    ),
                    width: 40.0,
                    height: 40.0,
                    child: const Text('목'),
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20.0,),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all(style: BorderStyle.solid),
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 8),
                        )
                      ],
                    ),
                    width: 40.0,
                    height: 40.0,
                    child: const Text('금'),
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all(style: BorderStyle.solid),
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 8),
                        )
                      ],
                    ),
                    width: 40.0,
                    height: 40.0,
                    child: const Text('토'),
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20.0,),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all(style: BorderStyle.solid),
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 8),
                        )
                      ],
                    ),
                    width: 40.0,
                    height: 40.0,
                    child: const Text('일'),
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20.0,),
          Container(
            width: 80.0,
            height: 40.0,
            child: OutlinedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const mento_3()));
              },
              child: const Text('선택', style: TextStyle(color: Color(0xff1C479B), fontSize: 20.0),),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
/*
class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
*/