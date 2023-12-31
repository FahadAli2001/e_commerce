import 'package:e_commerce/src/commans/custom_button/custom_button.dart';
import 'package:e_commerce/src/commans/custom_textfield/custom_textfield.dart';
import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/controller/auth/auth_controller.dart';
import 'package:e_commerce/src/views/drawer/drawer.dart';

import 'package:e_commerce/src/views/signup/signup_screen.dart';
import 'package:e_commerce/src/views/welcome/welcome_screen.dart';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final AuthController authController = Provider.of<AuthController>(context);
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: const Duration(seconds: 1),
                          child: const WelcomeScreen()));
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                  size: size.width * 0.08,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w900,
                      fontSize: size.width * 0.09),
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              Text(
                "Email",
                style:
                    TextStyle(color: Colors.grey, fontSize: size.width * 0.04),
              ),
              const CustomTextField(),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "Password",
                style:
                    TextStyle(color: Colors.grey, fontSize: size.width * 0.04),
              ),
              const CustomTextField(
                sufficIcon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Center(
                  child: CustomButton(
                      fontWeight: FontWeight.bold,
                      width: size.width * 0.7,
                      height: size.height * 0.05,
                      borderCircular: 5,
                      text: "Log in",
                      onpressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeftWithFade,
                                duration: const Duration(seconds: 1),
                                child: MainDrawer()));
                      })),
              SizedBox(
                height: size.height * 0.02,
              ),
              //
              InkWell(
                onTap: () {
                  authController.checkBioMetricSensor(context);
                },
                child: Center(
                  child: Icon(
                    Icons.fingerprint,
                    color: blueColor,
                    size: size.width * 0.15,
                  ),
                ),
              ),
              //
              SizedBox(
                height: size.height * 0.02,
              ),
              //

              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.12),
                child: Row(
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: TextStyle(
                          color: Colors.grey, fontSize: size.width * 0.04),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupScreen()));
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.04),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
