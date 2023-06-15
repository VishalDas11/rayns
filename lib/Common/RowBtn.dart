import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RowBtn extends StatelessWidget {
  const RowBtn(
      {super.key,
      this.text2 = "Next",
      required this.onpress,
      required this.onpress2});
  // TODO First btn var

  final VoidCallback onpress;
  // TODO Second Btn var
  final text2;

  final VoidCallback onpress2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: onpress,
          child: Container(
            width: 130,
            height: 40,
            decoration: BoxDecoration(
                color: Color(0xFF031A28),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(blurRadius: 1, color: Colors.white),
                ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  "Back".text.color(Colors.white).make()
                ]),
          ),
        ),
        InkWell(
          onTap: onpress2,
          child: Container(
            width: 130,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(blurRadius: 1, color: Colors.white),
                ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  "$text2".text.color(Colors.white).make(),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
