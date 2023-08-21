import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Common/RoundButton.dart';
import '../Common/customAppbar.dart';
import '../api services/Color.dart';
import 'workoutPlane2.dart';

class WorkoutPlanScreen extends StatelessWidget {
  const WorkoutPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.screenbackgroundColor,
        body: CustomAppBar(
          leadingicon: Icons.arrow_back,
          title: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hello Sarahas",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                Text(
                  "Good Morning",
                  // style: TextStyle(fontSize: 11, color: Colors.white),
                )
              ]),
          column: Column(
            children: [
              ImageCard(
                title: "Workout Plan",
                border: Border.all(color: Colors.white, width: 2),
              ).pOnly(bottom: 30),
              ImageCard(
                title: "Single day workout",
                border: Border.all(),
              ).pOnly(bottom: 30),
              RoundButton(
                  text: "Continue",
                  onpress: () {
                    Get.to(() => const WorkoutPlanScreen2());
                  })
            ],
          ).px(20).py(20),
        ));
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.border, required this.title});

  final Border border;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 1 / 4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: border,
            //  Border.all(color: Colors.white, width: 2),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/414029/pexels-photo-414029.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              fit: BoxFit.cover,
            )),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(0.6),
              const Color.fromARGB(255, 197, 17, 4).withOpacity(0.7),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title.text.size(20).white.make().pOnly(left: 10),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 1 / 10,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 1 / 1.4,
                        child:
                            "Loreum ipsum is simply  dummy text of simply printing and typesetting industry"
                                .text
                                .white
                                .make(),
                      ),
                      const CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.red,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 18,
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
