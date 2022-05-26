import 'package:basic_project_lab/talkRoom.dart';
import 'package:basic_project_lab/timeTable.dart';
import 'package:flutter/material.dart';

import 'mentoMatch.dart';

class mento_4 extends StatefulWidget {
  const mento_4({Key? key}) : super(key: key);

  @override
  mento_4State createState() => mento_4State();
}

class mento_4State extends State<mento_4> {
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
          const SizedBox(height: 10.0,),
          Container(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget> [
                Text('대전'),
                SizedBox(width: 5.0,),
                Image(image: AssetImage('images/litdown.jpg')),
                SizedBox(width: 10.0,),
                Text('거리순'),
                SizedBox(width: 5.0,),
                Image(image: AssetImage('images/litdown2.jpg')),
                SizedBox(width: 20.0,)
              ],
            ),
          ),
          Container(width: 1000, child: const Divider(thickness: 1.0,),),
          const SizedBox(height: 15.0,),
          Expanded(
            child: EduListConstructing(),
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
    Edu("징검다리", " ", "https://www.instagram.com/jingum_official/", "대전광역시 유성구 대학로 99", "충남대학교 중앙동아리, 초등학교 고학년을 주 대상으로 정기적인 교육 봉사를 함."), Edu("그루터기", "010-4737-5089", " ", "대전 유성구 월드컵대로300번길 7-16", "유성과 금성 지역 아동센터에서 정기적으로 교육 봉사 활동을 함"),
    Edu("SEED", " ", "https://www.facebook.com/seedkaist/", "대전광역시 유성구 대학로 291", "카이스트의 교육 봉사 동아리로 아동 학생과 1대1로 소통하는 교육 봉사를 선호함."), Edu("한울회", " ", " ", "대전광역시 유성구 덕명동 동서대로 125", "한밭대에서 직접 운영하는 봉사 동아리로 교육 환경이 열악한 학생들을 주 대상으로 가르침"),
    Edu("대전광역시자원봉사센터", "042-221-1365", "http://djv1365.or.kr/", "대전광역시 서구 둔산2동 1300", "대전 지역의 많은 봉사 단체가 등록이 되어있으며 다양한 봉사 활동을 계획 및 추진"), Edu("한울회", " ", " ", "대전광역시 동구 대학로 62", "대전대학교 에서 운영하는 봉사 동아리로 유, 초, 중, 고교를 인솔하고 교육함"),
    Edu("청연", " ", "http://guide.hannam.ac.kr/sub4/menu_5.html", "대전광역시 대덕구 오정동 한남로 70", "한남대 소속의 봉사 동아리. 대전 청소년 지원 센터와 함께 청소년을 지원하는 여러 봉사 활동을 정기적으로 한다."), Edu("그루터기", " ", " ", "대전광역시 서구 도안북로 88", "목원대 소속의 봉사 동아리. 예비 교사로서 학생들과 소통, 교육하는 방법을 배우는 동아리이다."),
    Edu("하늘회", "010-4784-2670", " ", "대전광역시 서구 도안북로 88", "배재대 소속의 봉사 동아리. 주기적으로 지역 아동센터의 학생들을 교육해왔음."), Edu("여행하는 선생님들", "010-2107-9512", "https://www.facebook.com/travellingteachersofficial", " ", "매 학기 방학마다 대전 뿐만이 아닌 여러 지역의 고등학교에서 교육 봉사를 하는 단체. 선생님들뿐만 아니라 대학생들도 참여하여 봉사할 수 있다."),
    Edu("지게들", "010-7731-8040", " ", "대전광역시 유성구 대학로 99", "충남대 소속의 봉사 동아리. 매주 3회 지역 아동센터에서 교육 봉사를 한다.")];

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
