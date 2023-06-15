import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Tab3 extends StatelessWidget {
  const Tab3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ImageCard(
            image:
                'https://img.freepik.com/premium-photo/yung-sportsman-concentrating-before-weightlifting-training-health-club-there-are-people-background_637285-2459.jpg?w=740',
          ),
          ImageCard(
            image:
                'https://img.freepik.com/premium-photo/yung-sportsman-concentrating-before-weightlifting-training-health-club-there-are-people-background_637285-2459.jpg?w=740',
          ),
          ImageCard(
              image:
                  'https://img.freepik.com/premium-photo/yung-sportsman-concentrating-before-weightlifting-training-health-club-there-are-people-background_637285-2459.jpg?w=740'),
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  ImageCard({super.key, required this.image});

  String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: MediaQuery.of(context).size.width * 1 / 1.2,
        height: MediaQuery.of(context).size.height * 1 / 4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      ).px(10),
    );
  }
}
