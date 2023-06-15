// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raynworkout/View/weightScreen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:numberpicker/numberpicker.dart';

import '../Common/ImageShade.dart';
import '../Common/RowBtn.dart';

class AgeScreen extends StatelessWidget {
  const AgeScreen({super.key});

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
                  height: MediaQuery.of(context).size.height * 1 / 1.5,
                  decoration: const BoxDecoration(
                      color: Color(0xFF031A28),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.white, blurRadius: 5)
                      ]),

                  //TODO   Age Number picker
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "How old are you"
                          .text
                          .color(Colors.white)
                          .size(24)
                          .make()
                          .pOnly(top: 20, bottom: 10),
                      "This help us to create your personlized plan"
                          .text
                          .color(Colors.white)
                          .make()
                          .pOnly(bottom: 20),
                      const NumPick().pOnly(bottom: 20),
                      RowBtn(
                        onpress: () {
                          Get.back();
                        },
                        onpress2: () {
                          Get.to(const WeightScreen());
                        },
                      )
                    ],
                  ).px(20)),
            ],
          )
        ],
      ),
    );
  }
}

class NumPick extends StatefulWidget {
  const NumPick({super.key});

  @override
  State<NumPick> createState() => _NumPickState();
}

class _NumPickState extends State<NumPick> {
  int _currentValue = 5;

  @override
  Widget build(BuildContext context) {
    return NumberPicker(
        selectedTextStyle: const TextStyle(
            fontSize: 36,
            color: Colors.white,
            wordSpacing: 0,
            letterSpacing: 0),
        textStyle: const TextStyle(
            color: Colors.white54, fontSize: 18, wordSpacing: 0),
        itemCount: 5,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.red, width: 3),
            bottom: BorderSide(color: Colors.red, width: 3),
          ),
        ),
        minValue: 0,
        maxValue: 100,
        value: _currentValue,
        onChanged: (int value) {
          setState(() {
            _currentValue = value;
          });
        }).centered();
  }
}
