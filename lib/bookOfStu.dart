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
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime(2022, 5, 1),
      lastDay: DateTime(2022, 5, 31),
      locale: 'ko-KR',
      daysOfWeekHeight: 30,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),
      calendarBuilders: CalendarBuilders(dowBuilder: (context, day) {
        switch(day.weekday){
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
    );
  }
}
