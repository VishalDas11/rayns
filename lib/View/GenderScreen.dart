import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:raynworkout/View/AgeScreen.dart';

import 'package:velocity_x/velocity_x.dart';

import '../Common/ImageShade.dart';
import '../Common/RowBtn.dart';

class GenderScreen extends StatefulWidget {
  GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  int selectContainer = 1;

  void selectedContainer(int index) {
    setState(() {
      selectContainer != index;
    });
  }

  Widget custom(String text, int index) {
    return GestureDetector(
      onTap: () {
        selectedContainer(1);
      },
      child: CircleAvatar(
        radius: 40,
        backgroundColor: selectContainer == 0 ? Colors.red : Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.key,
              size: 30,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                    boxShadow: [BoxShadow(color: Colors.white, blurRadius: 5)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Tell us about yourself"
                        .text
                        .size(24)
                        .color(Colors.white)
                        .make()
                        .pOnly(
                          top: 20,
                        ),
                    "To give a better experience are need to know your gender"
                        .text
                        .color(Colors.white)
                        .make()
                        .pOnly(bottom: 30),
                    custom("Male", 1).centered().pOnly(bottom: 20),
                    custom("Female", 2).centered().pOnly(bottom: 30),
                    RowBtn(
                      onpress: () {
                        Get.back();
                      },
                      onpress2: () {
                        Get.to(() => const AgeScreen());
                      },
                    )
                  ],
                ).px(20),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class GenderBtn extends StatelessWidget {
  const GenderBtn(
      {super.key,
      required this.color,
      required this.backColor,
      this.textColro,
      required this.onpress,
      required this.text});
  final Color color;
  final Color backColor;
  final Color? textColro;
  final text;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: CircleAvatar(
        backgroundColor: backColor,
        radius: 40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.key,
              size: 30,
              color: color,
            ),
            "$text".text.bold.color(textColro).make()
          ],
        ),
      ),
    );
  }
}
