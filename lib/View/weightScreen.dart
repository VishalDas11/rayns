import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:velocity_x/velocity_x.dart';

import '../Common/ImageShade.dart';
import '../Common/RowBtn.dart';
import 'goalScreen.dart';

class WeightScreen extends StatelessWidget {
  const WeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        const ImageShade(),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            "RW".text.size(64).color(Colors.white).bold.make(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "RAYN'S"
                    .text
                    .color(Colors.white)
                    .size(26)
                    .make()
                    .pOnly(right: 5),
                "WORKOUT".text.color(Colors.red).bold.size(26).make()
              ],
            ).pOnly(bottom: 50),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1 / 1.6,
              decoration: const BoxDecoration(
                  color: Color(0xFF031A28),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.white, blurRadius: 5),
                  ]),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "What's your weight?"
                        .text
                        .size(24)
                        .color(Colors.white)
                        .bold
                        .make()
                        .pOnly(top: 10, bottom: 10),
                    "This help us to create your personlize plan"
                        .text
                        .color(Colors.white)
                        .make()
                        .pOnly(bottom: 30),
                    "54Kg"
                        .text
                        .size(36)
                        .bold
                        .color(Colors.white)
                        .make()
                        .centered()
                        .pOnly(bottom: 50),
                    RowBtn(
                      onpress: () {
                        Get.back();
                      },
                      onpress2: () {
                        Get.to(() => const GoalScreen());
                      },
                    )
                  ]).px(20).py(20),
            ),
          ],
        )
      ]),
    );
  }
}
