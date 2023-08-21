import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:velocity_x/velocity_x.dart';

import '../Common/ImageShade.dart';
import 'loginScreen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ImageShade(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              ),
            ],
          ).px(70),
          Align(
            alignment: Alignment.bottomCenter,
            child: const Btn().px(70),
          ).pOnly(bottom: 80)
        ],
      ),
    );
  }
}

class Btn extends StatelessWidget {
  const Btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.to(() => LoginScreen());
      },
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 18),
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.white, width: 2))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        "Get Started".text.bold.size(18).make(),
        const Icon(Icons.arrow_forward)
      ]),
    );
  }
}
