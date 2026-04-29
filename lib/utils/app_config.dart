import 'package:flutter/material.dart';

class AppConfig extends StatelessWidget {
  const AppConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "E-Commerce App",
      style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
    );
  }
}
