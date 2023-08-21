import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:raynworkout/View/loginScreen.dart';

import 'package:velocity_x/velocity_x.dart';

import '../Common/ImageShade.dart';
import '../Common/RoundButton.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
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
                ).pOnly(bottom: 30),
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
                        BoxShadow(color: Colors.white, blurRadius: 5)
                      ]),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Register Your Account"
                            .text
                            .size(22)
                            .color(Colors.white)
                            .make()
                            .py(20),
                        Field(
                          controller: emailController,
                          hinttext: "Enter Email",
                          suffixIcon: Icons.email,
                        ).pOnly(bottom: 20),
                        Field(
                          controller: nameController,
                          hinttext: "Full Name",
                          suffixIcon: Icons.person,
                        ).pOnly(bottom: 20),
                        Field(
                          controller: passwordController,
                          hinttext: "Enter Password",
                          suffixIcon: Icons.visibility,
                        ).pOnly(bottom: 10),
                        Row(
                          children: [
                            "Already have an Account?"
                                .text
                                .color(Colors.white)
                                .make(),
                            "Login".text.white.underline.make().onTap(() {
                              Get.to(() => LoginScreen());
                            })
                          ],
                        ).pOnly(bottom: 20),
                        RoundButton(
                            text: " Register ",
                            onpress: () {
                              Get.to(() => LoginScreen());
                            }).pOnly(bottom: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 30,
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                            " Register "
                                .text
                                .color(Colors.white)
                                .size(20)
                                .make(),
                            const SizedBox(
                              width: 30,
                              child: Divider(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ).pOnly(bottom: 20),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SocialIcon(
                              icon: FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Colors.blue,
                                size: 30,
                              ),
                            ),
                            SocialIcon(
                              icon: FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.red,
                                size: 28,
                              ),
                            )
                          ],
                        ).px(70)
                      ],
                    ).pSymmetric(h: 20),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.icon,
    this.color,
  });
  final FaIcon icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: icon);
  }
}

class Field extends StatelessWidget {
  const Field(
      {super.key,
      this.hinttext,
      required this.suffixIcon,
      required this.controller});
  // ignore: prefer_typing_uninitialized_variables
  final hinttext;
  final IconData suffixIcon;
  final controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: "$hinttext",
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
        fillColor: Colors.white,
        filled: true,
        suffixIcon: Icon(suffixIcon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
