import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mento extends StatefulWidget {
  const Mento({Key? key}) : super(key: key);

  @override
  _MentoState createState() => _MentoState();
}

class _MentoState extends State<Mento> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
          children: <Widget>[
            const SizedBox(height: 15.0),
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                border: Border.all(color: const Color(0xff1C479B), width: 3),
                color: const Color(0xff1C479B),
              ),
              alignment: Alignment.centerLeft,
              child: const Text('     멘토링 매칭 신청', style: TextStyle(color: Colors.white, fontSize: 25)),
            ),

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
            Container(width: 1000, child: Divider(thickness: 1.0,),),
            const SizedBox(height: 15.0,),
            Expanded(
              child: EduListConstructing(),
            ),
          ],

        )

      ),
    );
  }
}

class Edu {
  String name;
  String phoneNum;
  String represent;
  String location;
  String description;

  Edu(this.name, this.phoneNum, this.represent, this.location, this.description);
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

  final List<Edu> edus = <Edu>[Edu("희망교육봉사단체", "010-1234-5678", "이석훈", "대전광역시 중구 서문로 107번길", "초/중/고등학생 학습을 지도하고 지역사회 평생 교육을 활성화하기 위해 운영하는 교육봉사단체입니다."), Edu("루나코인봉사단체", "010-2345-3532", "권도형", "대전광역시 유성구 테헤란로 102-23", "코인철학을 가르치는 단체입니다."),
    Edu("권도형 죽이고싶다.", "010-2604-0404", "루나", "서울특별시 강남구 압구정동 2단지", "권도형 암살단입니다."), Edu("대전물려버렸으단체", "010-0000-0000", "몰라", "대전 유성구 월평동 12", "코인손절단입니다."),
    Edu("충남대 교육봉사 동아리", "042-122-5422", "김택근", "대전 유성구 궁동 충남대학교", "교육단체를 가장한 술판입니다."), Edu("권택근식 운영", "042-312-4242", "노택근", "대전 유성구 궁동 충남대학교", "권택근식 수업입니다."),
    Edu("12조 화이팅", "010-3232-5164", "박택근", "경기도 안성시 당왕동 130-2", "12조를 응원하는 단체입니다."), Edu("terra coin is fake", "010-2000-3000", "윤택근", "대전 유성구 궁동 충남대학교", "테라코인 맞불 집회입니다.")];

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
                        Text("대표자: "+edus[index].represent, style: const TextStyle(fontSize: 15.0,)),
                        Text("연락처: "+edus[index].phoneNum, style: const TextStyle(fontSize: 15.0),),
                      ],
                    ),
                  ],
                ),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListBody(
                        children: <Widget> [
                          Text("위치: "+edus[index].location, textAlign: TextAlign.start,),
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
                            onPressed: () {Navigator.of(context).pop();},
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


