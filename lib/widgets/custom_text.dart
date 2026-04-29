import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  final String title;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  const CustomText({super.key, required this.title, this.fontSize, this.color, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize ?? 18,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color ?? Colors.white,
      ),
    );
  }
}