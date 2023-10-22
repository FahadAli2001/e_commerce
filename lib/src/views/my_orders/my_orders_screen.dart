import 'package:e_commerce/src/commans/custom_button/custom_button.dart';
import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.leftToRightWithFade,
                      duration: const Duration(seconds: 1),
                      child: MainDrawer()));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Orders",
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.07),
            ),
            //
            SizedBox(
              height: size.height * 0.02,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Card(
                    elevation: 10,
                    child: Container(
                      width: size.width,
                      height: size.height * 0.2,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/shirt.jpg",
                            height: 200,
                            width: 150,
                          ),
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
                              CustomButton(
                                  width: 150,
                                  height: 35,
                                  borderCircular: 0,
                                  fontWeight: FontWeight.bold,
                                  text: "Order Again",
                                  onpressed: () {})
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
