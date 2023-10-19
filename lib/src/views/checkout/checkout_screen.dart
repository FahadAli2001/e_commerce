import 'package:e_commerce/src/commans/custom_button/custom_button.dart';
import 'package:e_commerce/src/commans/custom_button/custom_cart_box/custom_cart_box.dart';
import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/confirmation/confirmation_screen.dart';
import 'package:e_commerce/src/views/payment/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                        child: const PaymentScreen()));
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.grey,
              )),
        ),
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
                width: size.width * 0.9,
                height: size.height * 0.05,
                borderCircular: 0,
                fontWeight: FontWeight.bold,
                text: "Confirm",
                onpressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeftWithFade,
                          duration: const Duration(seconds: 1),
                          child: const ConfirmationScreen()));
                })),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontal, vertical: vertical),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Checkout",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.08),
              ),
              //
              SizedBox(
                height: size.height * 0.01,
              ),
              //
              const CustomCartBox(),
              //
              SizedBox(
                height: size.height * 0.05,
              ),
              //
              const Text(
                "You can add a border shadow and rounded border to your InkWell by wrapping it with a Container and applying decoration to that Container. Here's how you can do it:",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
              ),
              //
              SizedBox(
                height: size.height * 0.03,
              ),

              ///
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SubTotal",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: size.width * 0.04),
                  ),
                  Text(
                    "\$ 45.00",
                    style: TextStyle(
                        color: Colors.black, fontSize: size.width * 0.04),
                  ),
                ],
              ),

              Divider(
                thickness: 0.2,
                color: Colors.grey.shade700,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              //

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discount",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: size.width * 0.04),
                  ),
                  Text(
                    "\$ 45.00",
                    style: TextStyle(
                        color: Colors.black, fontSize: size.width * 0.04),
                  ),
                ],
              ),
              Divider(
                thickness: 0.2,
                color: Colors.grey.shade700,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              //

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: size.width * 0.04),
                  ),
                  Text(
                    "\$ 45.00",
                    style: TextStyle(
                        color: Colors.black, fontSize: size.width * 0.04),
                  ),
                ],
              ),
              Divider(
                thickness: 0.2,
                color: Colors.grey.shade700,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        color: Colors.black, fontSize: size.width * 0.04),
                  ),
                  Text(
                    "\$ 45.00",
                    style: TextStyle(
                        color: Colors.black, fontSize: size.width * 0.04),
                  ),
                ],
              ),
              Divider(
                thickness: 0.2,
                color: Colors.grey.shade700,
              ),
            ]),
          ),
        ));
  }
}
