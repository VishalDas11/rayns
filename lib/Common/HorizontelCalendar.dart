import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:velocity_x/velocity_x.dart';

class HorizontalCalendar extends StatefulWidget {
  const HorizontalCalendar({super.key});

  @override
  State<HorizontalCalendar> createState() => _HorizontalCalendarState();
}

class _HorizontalCalendarState extends State<HorizontalCalendar> {
  DateTime _today = DateTime.now();
  CalendarFormat _calendarformate = CalendarFormat.week;

  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      rowHeight: 35,
      daysOfWeekStyle: const DaysOfWeekStyle(
        weekdayStyle: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
        weekendStyle: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
      daysOfWeekHeight: 20,
      calendarFormat: CalendarFormat.week,
      calendarStyle: CalendarStyle(
          outsideTextStyle: const TextStyle(color: Colors.white, fontSize: 12),
          weekendTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
          defaultTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
          todayTextStyle: const TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
          todayDecoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          selectedTextStyle: const TextStyle(color: Colors.white, fontSize: 12),
          tableBorder: TableBorder(borderRadius: BorderRadius.circular(20))),
      headerVisible: true,
      headerStyle: const HeaderStyle(
        titleTextStyle:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        leftChevronVisible: false,
        formatButtonVisible: false,
        rightChevronVisible: false,
        titleCentered: true,
      ),
      locale: "en_US",
      firstDay: DateTime.utc(2010),
      lastDay: DateTime.utc(2030),
      focusedDay: _today,
      startingDayOfWeek: StartingDayOfWeek.monday,
      onDaySelected: ((selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _today = focusedDay;
        });
      }),
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      onFormatChanged: (formate) {
        if (_calendarformate != formate) {
          setState(() {
            _calendarformate = formate;
          });
        }
      },
    ).px(10);
  }
}
