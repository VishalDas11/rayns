import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raynworkout/View/WeeklyPlan.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Common/customAppbar.dart';
import '../api services/Color.dart';

// ignore: must_be_immutable
class WeeklyTraningScreen extends StatelessWidget {
  WeeklyTraningScreen({super.key});

  List images = [
    'https://images.pexels.com/photos/2827392/pexels-photo-2827392.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/3490348/pexels-photo-3490348.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/4753928/pexels-photo-4753928.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1978505/pexels-photo-1978505.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.unsplash.com/photo-1595078475328-1ab05d0a6a0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
    'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
    'https://images.pexels.com/photos/2827392/pexels-photo-2827392.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/3490348/pexels-photo-3490348.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.screenbackgroundColor,
      body: CustomAppBar(
        leadingicon: Icons.arrow_back,
        title: "Guardians of the Gains".text.size(18).make(),
        column: GridView.builder(
            // scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: images.length,
            physics: const ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(() => WeeklyPlanScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(images[index]),
                        fit: BoxFit.cover,
                      )),
                  child: Container(
                    color: Colors.black.withOpacity(0.3),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child:
                            "Week1".text.size(24).color(Colors.white).make()),
                  ),
                ).px(20).py(10),
              );
            }),
      ),
    );
  }
}
