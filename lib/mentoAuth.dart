import 'package:basic_project_lab/Home_menti.dart';
import 'package:basic_project_lab/Home_mento.dart';
import 'package:flutter/material.dart';

class mentoAuth extends StatelessWidget {
  mentoAuth({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _pw = TextEditingController();
  TextEditingController _location = TextEditingController();
  TextEditingController _organization = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 130.0,),
          Row(
            children: const <Widget> [
              SizedBox(width: 80.0,),
              Text('멘토시군요!', style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),)
            ],
          ),
          const SizedBox(height: 10.0,),
          Row(
            children: const <Widget> [
              SizedBox(width: 85.0,),
              Text('정보를 입력해주세요.', style: TextStyle(fontSize: 17),),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(50.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  TextFormField(
                    controller: _name,
                    validator: (value) {
                      if(value!.trim().isEmpty) {
                        return "이름을 입력해주세요";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: '이름을 입력해주세요.',
                      labelText: '이름',
                      labelStyle: TextStyle(color: Colors.black),
                    ),

                  ),
                  const SizedBox(height: 25.0,),
                  TextFormField(
                    controller: _email,
                    validator: (value) {
                      if(value!.trim().isEmpty) {
                        return "이메일을 입력해주세요.";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: '이메일을 입력해주세요.',
                      labelText: '이메일',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 25.0,),
                  TextFormField(
                    controller: _pw,
                    validator: (value) {
                      if(value!.trim().isEmpty) {
                        return '비밀번호를 입력해주세요.';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: '비밀번호를 입력해주세요.',
                      labelText: '비밀번호',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 25.0,),
                  TextFormField(
                    controller: _location,
                    validator: (value) {
                      if(value!.trim().isEmpty) {
                        return '교육 가능 지역을 입력해주세요.';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: '교육 가능 지역을 입력해주세요.',
                      labelText: '교육 가능 지역',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 25.0,),
                  TextFormField(
                    controller: _organization,
                    validator: (value) {
                      if(value!.trim().isEmpty) {
                        return '교육단체 이름을 입력해주세요.';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: '교육단체 이름을 입력해주세요.',
                      labelText: '교육단체 이름',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 50.0),
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Home_mento()),
                            );
                          }
                        },
                        child: Image.asset('images/next.jpg'),
                      )
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
