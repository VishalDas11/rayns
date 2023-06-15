import 'dart:async';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

import 'GetStateted_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    wait();
    super.initState();
  }

  void wait() async {
    await Future.delayed(Duration(seconds: 3), () {
      Get.to(GetStartedScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
