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
                      child: const SingleProductScreen()));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
      ),
    );
  }
}
