import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/src/commans/custom_button/custom_button.dart';
import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/login/login_screen.dart';
import 'package:e_commerce/src/views/signup/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
   

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: StreamBuilder<ConnectivityResult>(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          if (snapshot.data == ConnectivityResult.none) {
            // return _showCustomDialog(context);

            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontal, vertical: vertical),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Icon(
                      CupertinoIcons.wifi_slash,
                      color: blueColor,
                      size: size.width * 0.4,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: Text(
                      "No Internet Connection",
                      style: TextStyle(color: Colors.grey, fontSize: 22),
                    ),
                  )
                ],
              ),
            );
          }

          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontal, vertical: vertical),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Welcome to Bolt",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w900,
                        fontSize: size.width * 0.07),
                  ),
                ),
                Center(
                  child: Text(
                    "Explore US",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.05),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SizedBox(
                  width: size.width * 0.5,
                  height: size.height * 0.4,
                  child: Image.asset(
                    "assets/images/welcome.png",
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                CustomButton(
                    text: "Login",
                    width: size.width * 0.7,
                    height: size.height * 0.05,
                    fontWeight: FontWeight.bold,
                    borderCircular: 5,
                    onpressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              duration: const Duration(seconds: 1),
                              child: const LoginScreen()));
                    }),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              duration: const Duration(seconds: 1),
                              child: const SignupScreen()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.04),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
