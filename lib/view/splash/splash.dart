import 'dart:async';
import 'package:ecommerce_app/utils/app_config.dart';
import 'package:flutter/material.dart';
import '../welcome_screen/welcome_screen.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {

    @override
    void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
       Get.to(WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: AppConfig()
        ),
      ),
    );
  }
}