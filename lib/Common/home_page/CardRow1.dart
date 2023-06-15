import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BoxImage extends StatelessWidget {
  BoxImage({super.key, required this.image});
  String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: MediaQuery.of(context).size.width * 1 / 1.1,
        height: MediaQuery.of(context).size.height * 1 / 4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      ).px(5),
    );
  }
}
