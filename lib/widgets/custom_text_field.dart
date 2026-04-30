import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool? isSecured;
  final String? hintText;
  final bool? isRequired;
  const CustomTextField({super.key, required this.label, this.isSecured, this.hintText, this.isRequired});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (String? value){
        isRequired == true ?
        {(value == null || value.isEmpty) ? "This field is required" : null
        }
        : null;
      },
      obscureText: isSecured ?? false,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.3),
        labelText: label,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white70),
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.red, width: 2),
      ),
      ),
    );
  }
}
