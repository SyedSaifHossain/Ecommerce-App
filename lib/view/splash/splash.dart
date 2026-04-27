import 'dart:async';
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
        child: const Center(
          child: Text(
            "E-Commerce App",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}