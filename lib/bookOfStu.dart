import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class bookOfStudent extends StatefulWidget {
  const bookOfStudent({Key? key}) : super(key: key);

  @override
  _bookOfStudentState createState() => _bookOfStudentState();
}

class _bookOfStudentState extends State<bookOfStudent> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
            child: const Text('    학습일지', style: TextStyle(color: Colors.white, fontSize: 25)),
          ),
          TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime(2022, 5, 1),
            lastDay: DateTime(2022, 5, 31),
            locale: 'ko-KR',
            daysOfWeekHeight: 30,
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),


            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
                color: const Color(0xff1C479B),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              defaultDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              weekendDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),

            calendarBuilders: CalendarBuilders(dowBuilder: (context, day) {
              switch(day.weekday) {
                case 1:
                  return const Center(child: Text('월'),);
                case 2:
                  return const Center(child: Text('화'),);
                case 3:
                  return const Center(child: Text('수'),);
                case 4:
                  return const Center(child: Text('목'),);
                case 5:
                  return const Center(child: Text('금'),);
                case 6:
                  return const Center(child: Text('토'),);
                case 7:
                  return const Center(child: Text('일',style: TextStyle(color: Colors.red),),);
              }
            },
            ),
          )
        ],
      )

    );
  }
}
