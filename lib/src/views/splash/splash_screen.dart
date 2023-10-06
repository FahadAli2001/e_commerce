import 'dart:async';

import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:e_commerce/src/views/welcome/welcome_screen.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(color: blueColor
            // gradient: LinearGradient(
            //     colors: [blueColor, Colors.white10],
            //     begin: Alignment.bottomLeft,
            //     end: Alignment.topRight,
            //     tileMode: TileMode.clamp)),
            ),
        child: Center(
          child: Stack(
            children: [
              SizedBox(
                width: size.width * 0.5,
                height: size.height * 0.3,
              ),
              Positioned(
                top: size.height * 0.1,
                left: size.width * 0.06,
                child: FaIcon(
                  FontAwesomeIcons.cartShopping,
                  color: Colors.orange.shade400,
                  size: size.width * 0.3,
                ),
              ),
              Positioned(
                  top: size.height * 0.05,
                  left: size.width * 0.08,
                  child: Text(
                    "E-Commerce",
                    style: TextStyle(
                        color: Colors.orange.shade400,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.05),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
