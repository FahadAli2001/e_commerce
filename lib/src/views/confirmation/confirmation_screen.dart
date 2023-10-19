import 'package:e_commerce/src/commans/custom_button/custom_button.dart';
import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({super.key});

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomButton(
              width: size.width * 0.9,
              height: size.height * 0.05,
              borderCircular: 0,
              fontWeight: FontWeight.bold,
              text: "Back To Home",
              onpressed: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeftWithFade,
                        duration: const Duration(seconds: 1),
                        child: const HomeScreen()));
              })),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 120,
                backgroundColor: Colors.grey.shade200,
                child: CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.grey.shade300,
                  child: FaIcon(
                    FontAwesomeIcons.solidThumbsUp,
                    color: blueColor,
                    size: 50,
                  ),
                ),
              ),
            ),
            //
            SizedBox(
              height: size.height * 0.02,
            ),
            //
            Text(
              "Congratulation",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                  fontSize: size.width * 0.05),
            ),
            //
            SizedBox(
              height: size.height * 0.01,
            ),
            //
            Text(
              "Your Order is Successfully placed",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                  fontSize: size.width * 0.05),
            )
          ],
        ),
      ),
    );
  }
}
