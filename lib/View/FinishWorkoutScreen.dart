import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:raynworkout/Common/HorizontelCalendar.dart';
import 'package:raynworkout/Common/customAppbar.dart';
import 'package:get/get.dart';
import 'package:raynworkout/api%20services/Color.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class FinishWorkoutScreen extends StatefulWidget {
  FinishWorkoutScreen({super.key});

  @override
  State<FinishWorkoutScreen> createState() => _FinishWorkoutScreenState();
}

class _FinishWorkoutScreenState extends State<FinishWorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.screenbackgroundColor,
      body: CustomAppBar(
        leadingicon: Icons.arrow_back,
        height: Get.height * 1 / 3.5,
        title: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HorizontalCalendar(),
          ],
        ),
        column: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child: Slider(),
            ),
          ],
        ),
      ),
    );
  }
}

class Slider extends StatefulWidget {
  const Slider({super.key});

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  double value = 652;
  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
      appearance: CircularSliderAppearance(
        size: 120,
        customWidths: CustomSliderWidths(
          progressBarWidth: 8,
          trackWidth: 10,
        ),
        angleRange: 360,
        infoProperties: InfoProperties(
            topLabelText: "652Cal",
            topLabelStyle: TextStyle(fontSize: 24, color: Colors.white),
           

            // mainLabelStyle: TextStyle(color: Colors.white, ),
            // bottomLabelText: "Active Caleries",
            // bottomLabelStyle: TextStyle(color: Colors.white),
            ),
      ),

      min: 0,
      max: 1000,

      initialValue: value,

      onChange: (double value) {
        this.value = value;
        // callback providing a value while its being changed (with a pan gesture)
      },
      onChangeStart: (double startValue) {
        // callback providing a starting value (when a pan gesture starts)
      },
      onChangeEnd: (double endValue) {
        // ucallback providing an ending value (when a pan gesture ends)
      },
      // innerWidget: (double value) {

      //   // use your custom widget inside the slider (gets a slider value from the callback)
      // },
    );
  }
}
