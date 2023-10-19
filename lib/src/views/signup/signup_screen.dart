import 'package:e_commerce/src/commans/custom_button/custom_button.dart';
import 'package:e_commerce/src/commans/custom_textfield/custom_textfield.dart';
import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/login/login_screen.dart';
import 'package:e_commerce/src/views/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
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
                  "SignUp",
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
                "Name",
                style:
                    TextStyle(color: Colors.grey, fontSize: size.width * 0.04),
              ),
              const CustomTextField(),
              SizedBox(
                height: size.height * 0.02,
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
                      width: size.width * 0.7,
                      height: size.height * 0.05,
                      borderCircular: 5,
                      fontWeight: FontWeight.bold,
                      text: "Sign Up",
                      onpressed: () {})),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.12),
                child: Row(
                  children: [
                    Text(
                      "Already have an account ?",
                      style: TextStyle(
                          color: Colors.grey, fontSize: size.width * 0.04),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeftWithFade,
                                duration: const Duration(seconds: 1),
                                child: const LoginScreen()));
                      },
                      child: Text(
                        "Sign in",
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
