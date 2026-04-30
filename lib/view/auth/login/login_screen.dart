import 'package:ecommerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.lightBlue, Colors.cyan],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                CustomText(
                  title: "Welcome to loging page",
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 30),
                CustomTextField(
                    label: "Email",
                    hintText: "Enter your email",
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  label: "Password",
                  hintText: "Enter your password",
                  isSecured: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
