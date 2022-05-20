import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mentoMatch.dart';

class MentoMatch_mento extends StatefulWidget {
  const MentoMatch_mento({Key? key}) : super(key: key);

  @override
  _MentoState createState() => _MentoState();
}

class _MentoState extends State<MentoMatch_mento> {

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
              Container(width: 1000, child: const Divider(thickness: 1.0,),),
              const SizedBox(height: 15.0,),
              Expanded(
                child: EduListConstructing(),
              ),
              Container(width: 1000, child: const Divider(thickness: 1.0,),),
              Container(
                height: 130.0,
                child: Column(
                  children: [
                    const SizedBox(height: 23.0,),
                    Container(
                      width: 200.0,
                      height: 60.0,
                      child: OutlinedButton(
                        onPressed: (){},
                        child: const Text('신청자 목록 확인'),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                          side: const BorderSide(color: Color(0xff1C479B)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0,)
                  ],
                ),
              )
            ],

          )

      ),
    );
  }
}