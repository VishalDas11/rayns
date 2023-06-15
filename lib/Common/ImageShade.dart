import 'package:flutter/material.dart';

class ImageShade extends StatelessWidget {
  const ImageShade({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (bound) {
          return LinearGradient(colors: [
            Colors.black.withOpacity(1),
            Colors.red,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
              .createShader(bound);
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://img.freepik.com/free-photo/couple-training-together-gym_651396-1076.jpg?w=740&t=st=1686751528~exp=1686752128~hmac=f7863cfd1014e43cb066c6d68d6417819610d3f8f7b9d7a3b88c0cb993280243'),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.medium),
          ),
        ));
  }
}
