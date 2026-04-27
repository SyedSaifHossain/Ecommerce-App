import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Center(
          child: Text(
            "Welcome Screen",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,
            color: Colors.white),
          ),
        ),
      ),
    );
  }
}
