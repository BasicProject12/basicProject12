import 'package:basic_project_lab/mentoMatch_4.dart';
import 'package:basic_project_lab/talkRoom.dart';
import 'package:basic_project_lab/timeTable.dart';
import 'package:flutter/material.dart';

import 'mentoMatch.dart';

class mento_3 extends StatefulWidget {
  const mento_3({Key? key}) : super(key: key);

  @override
  _mento_3State createState() => _mento_3State();
}

class _mento_3State extends State<mento_3> {
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
          Container(
            height: 500.0,
            child: EduListConstructing(),
          ),
          Container(
            height: 50.0,
            child: OutlinedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const mento_4()));
              },
              child: const Text('더 많은 교육단체 보기', style: TextStyle(color: Color(0xff1C479B)),),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          )
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

class Edu {
  String name;
  String phoneNum;
  String site;
  String location;
  String description;

  Edu(this.name, this.phoneNum, this.site, this.location, this.description);
}

class EduTile extends StatelessWidget {
  EduTile(this._edu);

  final Edu _edu;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('images/smile.jpg'),
      title: Text(_edu.name),
    );
  }
}

class EduListConstructing extends StatelessWidget {


  final List<Edu> edus = <Edu>[Edu("한마음교육봉사단", "042-350-3188", "http://www.hanmaum-ec.org/", "34141 대전광역시 유성구 대학로 291", "기본적인 교육에도 뒤처지기 쉬운 다문화 가정 학생을 위한 시설 설립 및 봉사 활동에 초점"), Edu("미담장학회", "010-7408-2971", "http://www.midamss.org/", " ", "카이스트, 충남대, 등 전국 10개 대학교에 설립되어 지역 청소년의 검정 고시 준비를 지원"),
    Edu("SEED", " ", "https://www.facebook.com/seedkaist/", "대전광역시 유성구 대학로 291", "카이스트의 교육 봉사 동아리로 아동 학생과 1대1로 소통하는 교육 봉사를 선호함."), Edu("한울회", " ", " ", "대전광역시 유성구 덕명동 동서대로 125", "한밭대에서 직접 운영하는 봉사 동아리로 교육 환경이 열악한 학생들을 주 대상으로 가르침"),];


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: edus.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: EduTile(edus[index]),
          onTap: () => showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return AlertDialog(

                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 20.0,),
                      Image.asset('images/picture.jpg'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(height: 10.0,),
                          Text(edus[index].name, style: const TextStyle(fontWeight: FontWeight.bold),),
                          const SizedBox(height: 5.0,),
                          Text("사이트: "+edus[index].site, style: const TextStyle(fontSize: 15.0,), softWrap: true,),
                          Text("연락처: "+edus[index].phoneNum, style: const TextStyle(fontSize: 15.0), softWrap: true,),
                        ],
                      ),
                    ],
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListBody(
                          children: <Widget> [
                            Text("위치: "+edus[index].location, textAlign: TextAlign.start, softWrap: true,),
                            const SizedBox(height: 20.0,),
                            Text(edus[index].description, softWrap: true,),
                          ],
                        ),
                        const SizedBox(height: 20.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget> [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              onPressed: () {Navigator.of(context).pop();},
                              child: const Text('가능한 시간대 확인', style: TextStyle(color: Color(0xff1C479B)),),
                            ),
                            const SizedBox(height: 10.0,),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext context) {
                                    return const SubjectDialog();
                                  },
                                );
                              },
                              child: const Text("신청하기", style: TextStyle(color: Color(0xff1C479B)),),
                            ),
                            const SizedBox(height: 10.0,),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              onPressed: () {Navigator.of(context).pop();},
                              child: const Text("취소", style: TextStyle(color: Color(0xff1C479B)),),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                );
              }
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}
