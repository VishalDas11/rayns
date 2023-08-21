import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt isMaleSelected = 0.obs;
  RxInt isFemaleSelected = 0.obs;
  final Rx<CountDownController> controller = CountDownController().obs;
  // final CountDownController controller =
  //     CountDownController().obs;
  RxInt index = 0.obs;
  RxList goalList = [
    'Gain Weight',
    'Loss Weight',
    'Get filter',
    'Gain More Flexible',
    'Learn the bascis',
  ].obs;

  RxList activityList = [
    'Beginer',
    'Intermediate',
    'Advance',
    'Rookie',
    'Trust beast',
  ].obs;
  //   Select Male gender
  void selectMale() {
    isMaleSelected.value = 1;
    isFemaleSelected.value = 0;
  }
  // select Female gender

  void selectFemale() {
    isMaleSelected.value = 0;
    isFemaleSelected.value = 1;
  }

  // Select from goallist
  // void selectgoal(index) {
  //   index.value = index;
  // }

  // //Select from activityList
  // void selectactivity(index) {
  //   index.value = index;
  // }
}
