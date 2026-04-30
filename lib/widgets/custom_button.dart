import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonLabel;
  final double? fontSize;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key, required this.buttonLabel,
    this.fontSize,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        backgroundColor: backgroundColor ?? Colors.blue,
        foregroundColor: foregroundColor ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ).copyWith(
        backgroundColor: WidgetStatePropertyAll(backgroundColor ?? Colors.blue),
        foregroundColor: WidgetStatePropertyAll(foregroundColor ?? Colors.white),
      ),
      child: Text(
        buttonLabel,
        style: TextStyle(
          fontSize: fontSize ?? 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
