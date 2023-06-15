import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key, required this.text, required this.onpress});
  final String text;

  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
              color: Colors.red[900],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white, width: 1.5)),
          child: Center(
              child: "$text"
                  .text
                  .size(18)
                  .color(Colors.white)
                  .bold
                  .make()
                  .centered())),
    );
  }
}
