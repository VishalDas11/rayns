import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raynworkout/View/CounterDownTimer.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Common/RoundButton.dart';
import '../Common/customAppbar.dart';
import '../api services/Color.dart';

class ScheduleWorkOutScreen extends StatefulWidget {
  const ScheduleWorkOutScreen({super.key});

  @override
  State<ScheduleWorkOutScreen> createState() => _ScheduleWorkOutScreenState();
}

class _ScheduleWorkOutScreenState extends State<ScheduleWorkOutScreen> {
  DateTime _today = DateTime.now();

  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.screenbackgroundColor,
      body: CustomAppBar(
        leadingicon: Icons.arrow_back,
        title: const Text("Schedule Workout "),
        column: Column(
          children: [
            //  Calender
            calender(),

            // daily schedule session
            dailySchedule(),

            // Round Button
            RoundButton(
                text: "Start Workout Now",
                onpress: () {
                  Get.to(() => CounterScreen());
                }).px(30).py(20)
          ],
        ),
      ),
    );
  }

  // Calender

  Widget calender() {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: AppColor.calenderColor,
          borderRadius: BorderRadius.circular(30)),
      child: TableCalendar(
        rowHeight: 35,
        daysOfWeekStyle: const DaysOfWeekStyle(
            weekdayStyle: TextStyle(color: Colors.white70),
            weekendStyle: TextStyle(color: Colors.white70)),
        calendarFormat: CalendarFormat.month,
        calendarStyle: CalendarStyle(
            weekendTextStyle: const TextStyle(color: Colors.white70),
            defaultTextStyle: const TextStyle(color: Colors.white70),
            todayTextStyle: const TextStyle(color: Colors.red),
            todayDecoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            selectedTextStyle: const TextStyle(color: Colors.white),
            outsideDaysVisible: false,
            tableBorder: TableBorder(borderRadius: BorderRadius.circular(20))),
        locale: "en_US",
        headerStyle: HeaderStyle(
            titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
            formatButtonVisible: false,
            titleCentered: true,
            leftChevronIcon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            rightChevronIcon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30))),
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
      ),
    );
  }
}

//  Daily Schedule
Stack dailySchedule() {
  return Stack(
    children: [
      Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        decoration: BoxDecoration(
            color: AppColor.calenderColor,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Daily Schedule".text.white.size(22).make().pOnly(bottom: 10),
            const CustomRow(
                    text1: "  08:30  Warm-Up", text2: "  | Personal Training ")
                .pOnly(bottom: 12),
            const CustomRow(
                    text1: "  12:00  Warm-Up", text2: "  | Online Traning ")
                .pOnly(bottom: 12),
            const CustomRow(
                    text1: "  18:30  Warm-Up", text2: "  | Personal Training ")
                .pOnly(bottom: 12),
            const CustomRow(
                    text1: "  21:00  Warm-Up", text2: "  | Personal Training ")
                .pOnly(bottom: 12)
          ],
        ),
      ),
      Positioned(
        right: 15,
        bottom: 90,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: const Icon(
            Icons.add,
            color: Colors.red,
          ).centered(),
        ),
      )
    ],
  );
}

// customRow whcih is used in daily schedule session
class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.text1, required this.text2});

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        text1.text.white.size(14).bold.make(),
        text2.text.color(Colors.white70).bold.size(14).make()
      ],
    );
  }
}
