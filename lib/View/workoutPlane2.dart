import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raynworkout/Common/customAppbar.dart';
import 'package:raynworkout/View/weeklyTraningScreen.dart';
import 'package:raynworkout/api%20services/Color.dart';

import 'package:velocity_x/velocity_x.dart';

class WorkoutPlanScreen2 extends StatelessWidget {
  const WorkoutPlanScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.screenbackgroundColor,
      body: CustomAppBar(
          leadingicon: Icons.arrow_back,
          title: const Text("Workout Plan"),
          column: const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Column(children: [
              Tile(),
              Tile(),
              Tile(),
              Tile(),
              Tile(),
              Tile(),
              Tile(),
              Tile(),
            ]),
          )),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(WeeklyTraningScreen());
      },
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 1 / 8,
        decoration: BoxDecoration(
          color: AppColor.tileColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 1 / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  "Guardians"
                      .text
                      .bold
                      .color(Color(0xFFD1B000))
                      .size(28)
                      .make(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          "OF"
                              .text
                              .bold
                              .color(Color(0xFFD1B000))
                              .size(14)
                              .make(),
                          "THE"
                              .text
                              .color(Color(0xFFD1B000))
                              .bold
                              .size(14)
                              .make()
                        ],
                      ),
                      "Gains".text.bold.color(Color(0xFFD1B000)).size(28).make()
                    ],
                  )
                ],
              )

              //  "GUARDIANS OF THE GAINS".text.size(24).color(Color(0xFFD1B000)).make(),
              ),
          Icon(
            Icons.visibility,
            color: AppColor.greenColor,
          ).pOnly(),
          Icon(
            Icons.download,
            color: AppColor.whiteColor,
          ).pOnly(left: 5),
          Container(
            width: 60,
            height: 20,
            decoration: BoxDecoration(
                color: AppColor.greenColor,
                borderRadius: BorderRadius.circular(30)),
            child: "Select".text.white.size(11).make().centered(),
          ).px(5).py(5)
        ]).px(8),
      ).px(10).py(5),
    );
  }
}
