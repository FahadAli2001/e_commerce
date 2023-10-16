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
              for (var i = 0; i < 5; i++) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Card(
                    elevation: 10,
                    child: Container(
                      width: size.width,
                      height: size.height * 0.2,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/images/shirt.jpg",
                              fit: BoxFit.cover,
                              width: 150,
                              height: 200,
                            ),
                            //
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            //
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Women t-shirt",
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.04),
                                ),
                                Text(
                                  "Lotto ltd",
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.04),
                                ),
                                Text(
                                  "\$34.50",
                                  style: TextStyle(
                                      color: blueColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.04),
                                ),
                                Row(
                                  children: [
                                    Card(
                                      elevation: 10,
                                      child: Container(
                                        width: 35,
                                        height: 35,
                                        color: Colors.white,
                                        child: const Center(
                                            child: Icon(
                                          Icons.remove,
                                          color: Colors.grey,
                                        )),
                                      ),
                                    ),
                                    Card(
                                      elevation: 10,
                                      child: Container(
                                        width: 35,
                                        height: 35,
                                        color: Colors.white,
                                        child: const Center(
                                            child: Text(
                                          "1",
                                          style: TextStyle(color: Colors.grey),
                                        )),
                                      ),
                                    ),
                                    Card(
                                      elevation: 10,
                                      child: Container(
                                        width: 35,
                                        height: 35,
                                        color: Colors.white,
                                        child: const Center(
                                            child: Icon(
                                          Icons.add,
                                          color: Colors.grey,
                                        )),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            //
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ]
            ],
          ),
        ),
      ),
    );
  }
}
