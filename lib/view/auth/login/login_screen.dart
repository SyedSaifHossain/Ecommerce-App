import 'package:ecommerce_app/view/home_screen.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final form = GlobalKey<FormState>();
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
                  title: "Login Here",
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 10),
                CustomText(
                  title: "Welcome back! Please login to your account.",
                  fontSize: 18,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 30),

                Form(
                  key: form,
                  child: Column(
                    children: [
                      CustomTextField(
                        label: "Email",
                        hintText: "Enter your email",
                        isRequired: true,
                      ),

                      const SizedBox(height: 15),
                      CustomTextField(
                        label: "Password",
                        hintText: "Enter your password",
                        isSecured: true,
                        isRequired: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomText(
                    title: 'Forget your password',
                    fontSize: 16,
                     color: Colors.white),
                ),
                const SizedBox(height: 30),

                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        onPressed: () {
                          if(form.currentState!.validate()){
                          Get.to(const HomeScreen());
                          }
                        },
                        buttonLabel: "Sign In",
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        onPressed: () {

                        },
                        buttonLabel: "Create an account",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
