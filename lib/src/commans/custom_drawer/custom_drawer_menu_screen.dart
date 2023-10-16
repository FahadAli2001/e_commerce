import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:e_commerce/src/views/cart/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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
            const Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                Text(
                  " Profile",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeftWithFade,
                        duration: const Duration(seconds: 1),
                        child: const CartScreen()));
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  Text(
                    "- My Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Row(
              children: [
                Icon(
                  CupertinoIcons.bag_fill,
                  color: Colors.white,
                ),
                Text(
                  "- My Orders",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Row(
              children: [
                Icon(Icons.logout, color: Colors.white),
                Text(
                  "- Logout",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
