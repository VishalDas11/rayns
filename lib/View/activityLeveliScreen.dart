import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raynworkout/api%20services/GetxProvider.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Common/ImageShade.dart';
import '../Common/RowBtn.dart';
import '../Common/home_page/bottom_navigation.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        const ImageShade(),
        SingleChildScrollView(
          child: Column(
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
                height: MediaQuery.of(context).size.height * 1 / 1.4,
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
                      "Your regular physical activity level? "
                          .text
                          .bold
                          .color(Colors.white)
                          .size(24)
                          .make()
                          .pOnly(top: 10, bottom: 10, right: 10),
                      "This helps us create your personalized plan"
                          .text
                          .color(Colors.white)
                          .make(),
                      const SizedBox(
                              // width: MediaQuery.of(context).size.width * 1 / 3,
                              height: 280,
                              child: GoalList())
                          .centered(),
                      RowBtn(
                        onpress: () {
                          Get.back();
                        },
                        onpress2: () {
                          Get.to(() => BottomNavigation());
                        },
                      )
                    ]).px(20).py(10),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class GoalList extends StatefulWidget {
  const GoalList({super.key});

  @override
  State<GoalList> createState() => _GoalListState();
}

class _GoalListState extends State<GoalList> {
  Controller getxcontroller = Get.put(Controller());
  // final list = [
  //   'Beginer',
  //   'Intermediate',
  //   'Advance',
  //   'Rookie',
  //   'Trust beast',
  // ];
  // int index = 0;
  @override
  Widget build(BuildContext context) {
    print("Build activity");
    return Obx(() {
      return CupertinoPicker(
        itemExtent: 60,
        scrollController: FixedExtentScrollController(initialItem: 2),
        onSelectedItemChanged: (index) {
          getxcontroller.update();
        },
        children: getxcontroller.activityList
            .map((item) => Center(
                  child: Text(
                    item,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ))
            .toList(),
        // onSelectedItemChanged: (index) {
        //   getxcontroller.selectactivity(index);
        // }
        // onSelectedItemChanged: (index) {
        //   setState(() {
        //     this.index = index;
        //   });
        //   final item = list[index];
        //   print("Selected item is : ${item}");
        // },
      );
    });
  }
}
