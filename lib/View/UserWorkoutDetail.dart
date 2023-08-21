import 'package:flutter/material.dart';
import 'package:raynworkout/Common/HorizontelCalendar.dart';
import 'package:raynworkout/Common/RoundButton.dart';
import 'package:raynworkout/Common/customAppbar.dart';
import 'package:raynworkout/api%20services/Color.dart';
import 'package:velocity_x/velocity_x.dart';

class UserWorkoutDetail extends StatelessWidget {
  const UserWorkoutDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.navbarColor,
      body: CustomAppBar(
        height: 200,
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [HorizontalCalendar()],
        ),
        leadingicon: Icons.arrow_back,
        column: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            textfield(
              hintText: "No of Steps",
            ).pOnly(bottom: 20),
            textfield(hintText: "Weight").pOnly(bottom: 20),
            textfield(hintText: "No of Sets ").pOnly(bottom: 20),
            textfield(hintText: "No of Sets").pOnly(bottom: 50),
            RoundButton(text: "Continue", onpress: () {})
          ],
        ).px(20).py(20),
      ),
    );
  }
}

class textfield extends StatelessWidget {
  textfield({super.key, required this.hintText});

  String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          filled: true,
          fillColor: Colors.white),
    );
  }
}
