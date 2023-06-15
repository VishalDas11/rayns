import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {super.key,
      required this.leadingicon,
      required this.title,
      this.gridView,
      this.column});

  final IconData leadingicon;

  final Widget title;
  final Widget? column;
  final GridView? gridView;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: true,
          backgroundColor: Color(0xFF031A28),
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          expandedHeight: 140,
          leading: Icon(
            leadingicon,
            color: Colors.red,
            size: 25,
          ).onTap(() {
            Get.back();
          }),
          flexibleSpace: FlexibleSpaceBar(
            title: title,
            centerTitle: true,
          ).onTap(() {
            Get.back();
          }),
          actions: [
            const Icon(
              Icons.notifications,
              size: 30,
              color: Colors.white,
            ).pOnly(right: 5),
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1388253782/photo/positive-successful-millennial-business-professional-man-head-shot-portrait.jpg?s=1024x1024&w=is&k=20&c=v0FzN5RD19wlMvrkpUE6QKHaFTt5rlDSqoUV1vrFbN4='),
              ),
            ).pOnly(right: 10, left: 5).onTap(() {}),
          ],
        ),
        SliverToBoxAdapter(child: column),
      ],
    );
  }
}
