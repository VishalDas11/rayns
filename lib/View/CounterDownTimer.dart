import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:get/get.dart';
import 'package:raynworkout/Common/customAppbar.dart';
import 'package:raynworkout/View/UserWorkoutDetail.dart';
import 'package:raynworkout/api%20services/Color.dart';
import 'package:raynworkout/api%20services/GetxProvider.dart';
import 'package:velocity_x/velocity_x.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final int _duration = 60;

  Controller getxController = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.navbarColor,
      body: CustomAppBar(
        leadingicon: Icons.arrow_back,
        title: Text("Countdown Timer").text.bold.make(),
        column: Counter(duration: _duration, getxController: getxController),
      ),

      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        //  restart btn
        IconButton(
            icon: const Icon(
              Icons.repeat,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {
              if (getxController.controller.value.isPaused) {
                getxController.controller.value.reset();
              } else if (getxController.controller.value.isResumed) {
                getxController.controller.value.restart();
              } else if (getxController.controller.value.isRestarted) {
                getxController.controller.value.restart();
              } else {
                getxController.controller.value.reset();
              }
            }),
        // Play and pause Button
        Obx(() {
          return GestureDetector(
              onTap: () {
                if (getxController.controller.value.isResumed ||
                    getxController.controller.value.isStarted) {
                  getxController.controller.value.pause();
                } else {
                  getxController.controller.value.resume();
                }
                setState(() {});
              },
              child: Container(
                  padding: EdgeInsets.all(15),
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  child: Icon(
                      getxController.controller.value.isResumed ||
                              getxController.controller.value.isStarted
                          ? Icons.play_arrow
                          : Icons.pause,
                      color: Colors.white)));
        }),

        // Add Button
        GestureDetector(
          onTap: () {
            Get.to(() => UserWorkoutDetail());
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: const Icon(
              Icons.add,
            ),
          ),
        ),
        // IconButton(
        //     icon: Icon(
        //       Icons.repeat,
        //       color: Colors.white,
        //     ),
        //     onPressed: () {
        //       _controller.restart();
        //     }),
      ]),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     const SizedBox(
      //       width: 30,
      //     ),
      //     _button(
      //       title: "Start",
      //       onPressed: () => _controller.start(),
      //     ),
      //     const SizedBox(
      //       width: 10,
      //     ),
      //     _button(
      //       title: "Pause",
      //       onPressed: () => _controller.pause(),
      //     ),
      //     const SizedBox(
      //       width: 10,
      //     ),
      //     _button(
      //       title: "Resume",
      //       onPressed: () => _controller.resume(),
      //     ),
      //     const SizedBox(
      //       width: 10,
      //     ),
      //     _button(
      //       title: "Restart",
      //       onPressed: () => _controller.restart(duration: _duration),
      //     ),
      //   ],
      // ),
    );
  }
}

//

class Counter extends StatelessWidget {
  const Counter({
    super.key,
    required int duration,
    required this.getxController,
  }) : _duration = duration;

  final int _duration;
  final Controller getxController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularCountDownTimer(
        // Countdown duration in Seconds.
        duration: _duration,

        controller: getxController.controller.value,

        width: MediaQuery.of(context).size.width / 2,

        height: MediaQuery.of(context).size.height / 2,

        // Ring Color for Countdown Widget.
        ringColor: Colors.white,

        // Filling Color for Countdown Widget.
        fillColor: Colors.red,

        autoStart: false,

        // Border Thickness of the Countdown Ring.
        strokeWidth: 5,

        // Begin and end contours with a flat edge and no extension.
        strokeCap: StrokeCap.round,

        textStyle: const TextStyle(
          fontSize: 33.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),

        // Format for the Countdown Text.
        textFormat: CountdownTextFormat.HH_MM_SS,

        // This Callback will execute when the Countdown Starts.
        onStart: () {
          // Here, do whatever you want
          debugPrint('Countdown Started');
        },

        // This Callback will execute when the Countdown Ends.
        onComplete: () {
          // Here, do whatever you want
          debugPrint('Countdown Ended');
        },

        // This Callback will execute when the Countdown Changes.
        onChange: (String timeStamp) {
          // Here, do whatever you want
          debugPrint('Countdown Changed $timeStamp');
        },

        //  Function to format the text.

        timeFormatterFunction: (defaultFormatterFunction, duration) {
          if (duration.inSeconds == 0) {
            // only format for '0'
            return Function.apply(defaultFormatterFunction, [duration]);
          } else {
            // other durations by it's default format
            return Function.apply(defaultFormatterFunction, [duration]);
          }
        },
      ),
    );
  }
}
