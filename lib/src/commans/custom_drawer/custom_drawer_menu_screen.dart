import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomDrawerMenuScreen extends StatelessWidget {
  const CustomDrawerMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: blueColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.3, horizontal: size.width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Fahad",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const Text(
              "- Profile",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Text(
              "- My Cart",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Text(
              "- My Orders",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Text(
              "- Language",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Text(
              "- Logout",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
