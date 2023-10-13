import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomDrawerMenuScreen extends StatelessWidget {
  const CustomDrawerMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
