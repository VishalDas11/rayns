import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ImageCard(
            image:
                'https://img.freepik.com/free-photo/woman-holding-weights-near-barbells_651396-1617.jpg?w=740&t=st=1686758741~exp=1686759341~hmac=d87c90adeda3cd5baad3d524127745cc2e11e79924d4ea64bebabeb0ff26c231',
          ),
          ImageCard(
            image:
                'https://img.freepik.com/free-photo/woman-holding-weights-near-barbells_651396-1617.jpg?w=740&t=st=1686758741~exp=1686759341~hmac=d87c90adeda3cd5baad3d524127745cc2e11e79924d4ea64bebabeb0ff26c231',
          ),
          ImageCard(
            image:
                'https://img.freepik.com/free-photo/woman-holding-weights-near-barbells_651396-1617.jpg?w=740&t=st=1686758741~exp=1686759341~hmac=d87c90adeda3cd5baad3d524127745cc2e11e79924d4ea64bebabeb0ff26c231',
          ),
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
