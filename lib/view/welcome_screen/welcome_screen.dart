import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import '../auth/login/login_screen.dart';
import 'package:get/get.dart';

import '../auth/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.lightBlue, Colors.cyan],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/welcome.jpg',
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Column(
                children: [
                  CustomText(
                    title: "Discover Your Dream Job Here",
                    fontSize: 40,
                  ),
                  const SizedBox(height: 15),
                  CustomText(
                    title: "Explore all the existing job roles based on your interest and study major.",
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: CustomButton(

                      onPressed: () {
                        Get.to(const LoginScreen());
                      },
                          buttonLabel: "Login",
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blue,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: CustomButton(
                      onPressed: (){
                        Get.to(const SignupScreen());
                      },
                        buttonLabel: "Register",
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                       ),
                  ),
                ],
              ),
              const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
