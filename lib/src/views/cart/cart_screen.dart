import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      type: PageTransitionType.leftToRightWithFade,
                      duration: const Duration(seconds: 1),
                      child: const HomeScreen()));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: size.width * 0.9,
          height: size.height * 0.07,
          color: blueColor,
          child: Center(
            child: Text(
              "Continue",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.05),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cart",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.08),
              ),
              //
              for (var i = 0; i < 5; i++) ...[]
            ],
          ),
        ),
      ),
    );
  }
}
