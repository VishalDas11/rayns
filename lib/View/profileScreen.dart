import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raynworkout/View/workoutPlan.dart';

import 'package:velocity_x/velocity_x.dart';

import '../Common/ImageShade.dart';
import '../api services/Color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.topCenter, children: [
        const ImageShade(),

        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1 / 1.4,
                decoration: const BoxDecoration(
                    color: Color(0xFF031A28),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          blurStyle: BlurStyle.outer)
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 1 / 3.7,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                "Hello\nWorld"
                                    .text
                                    .bold
                                    .color(Colors.white)
                                    .size(28)
                                    .make()
                                    .centered()
                              ],
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: VerticalDivider(
                              color: Colors.grey,
                              indent: 50,
                              endIndent: 20,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "joined"
                                    .text
                                    .color(Colors.white)
                                    .make()
                                    .pOnly(top: 15),
                                "2 mon ago"
                                    .text
                                    .color(Colors.white)
                                    .size(16)
                                    .make()
                                    .pOnly(bottom: 12),
                                "Pro Number"
                                    .text
                                    .size(12)
                                    .color(Colors.red)
                                    .make(),
                                "Until 18 july 2022"
                                    .text
                                    .color(Colors.white)
                                    .size(14)
                                    .make(),
                                "12 Mo Subscription"
                                    .text
                                    .color(Colors.white)
                                    .make()
                                    .pOnly(bottom: 5),
                                "Lifts/Squat"
                                    .text
                                    .color(Colors.white)
                                    .size(14)
                                    .make(),
                                "11".text.color(Colors.white).make()
                              ],
                            ).pOnly(),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const tile(
                      text: "Edit Profile",
                      icon: Icons.arrow_forward_ios,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const tile(
                      text: "Privacy Policy",
                      icon: Icons.arrow_forward_ios,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const tile(
                      text: "Setting",
                      icon: Icons.arrow_forward_ios,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 1 / 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    minimumSize: Size(100, 5),
                                    maximumSize: Size(100, 28),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                onPressed: () {},
                                child:
                                    "Create".text.color(Colors.white).make()),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    "You Can Create A Work Out Plan"
                                        .text
                                        .size(14)
                                        .bold
                                        .make(),
                                    "This Subscription is auto-renewable"
                                        .text
                                        .size(11)
                                        .color(Colors.grey[700])
                                        .make(),
                                  ],
                                ),
                                const CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 12,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ).onTap(() {
                                  Get.to(() => const WorkoutPlanScreen());
                                }),
                              ],
                            )
                          ]),
                    ).pOnly(bottom: 5),
                    const Divider(color: Colors.grey),
                    const tile(
                      text: "Sign Out",
                      color: Colors.red,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                  ],
                ).px(20)),
          ],
        ),
        // TODO  Image Circle
        Positioned(
          top: 50,
          //  bottom: 450,
          child: CircleImage(),
        ),
      ]),
    );
  }
}

class tile extends StatelessWidget {
  const tile(
      {super.key,
      required this.text,
      this.color = Colors.white,
      this.onpress,
      this.icon});
  final String text;
  final Color? color;
  final VoidCallback? onpress;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        text,
        style: TextStyle(color: color, fontSize: 14),
      ),
      trailing: Icon(icon, color: Colors.white),
      visualDensity: VisualDensity(vertical: -4),
      dense: true,
    );
  }
}

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 54,
      backgroundColor: AppColor.whiteColor,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: AppColor.screenbackgroundColor,
        child: CircleAvatar(
          radius: 41,
          backgroundColor: AppColor.redColor,
          child: CircleAvatar(
            radius: 38,
            backgroundColor: AppColor.screenbackgroundColor,
            child: const CircleAvatar(
              radius: 33,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                // ignore: prefer_const_constructors
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/1978505/pexels-photo-1978505.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
