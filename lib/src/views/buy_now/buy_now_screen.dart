import 'package:e_commerce/src/commans/custom_textfield/custom_textfield.dart';
import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/payment/payment_screen.dart';
import 'package:e_commerce/src/views/single_product/single_product.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class BuyNowScreen extends StatefulWidget {
  const BuyNowScreen({super.key});

  @override
  State<BuyNowScreen> createState() => _BuyNowScreenState();
}

class _BuyNowScreenState extends State<BuyNowScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // title: Text(
        //   "Tickers",
        //   style: TextStyle(color: blueColor),
        // ),
        // centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      type: PageTransitionType.leftToRightWithFade,
                      duration: const Duration(seconds: 1),
                      child: const SingleProductScreen()));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    duration: const Duration(seconds: 1),
                    child: const PaymentScreen()));
          },
          child: Container(
            width: size.width * 0.9,
            height: size.height * 0.06,
            color: blueColor,
            child: Center(
              child: Text(
                "Buy Now",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.05),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontal + 15, vertical: vertical),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/ticker.jpg",
                  width: 250,
                  height: 150,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const CustomTextField(
                hintText: "Name",
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const CustomTextField(
                hintText: "Contact No",
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const CustomTextField(
                hintText: "Email",
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const CustomTextField(
                hintText: "City",
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const CustomTextField(
                hintText: "Address",
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const CustomTextField(
                hintText: "Near Location",
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const CustomTextField(
                hintText: "Postal Code",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
