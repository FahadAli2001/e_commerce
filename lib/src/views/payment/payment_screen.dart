import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce/src/commans/custom_button/custom_button.dart';
import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/buy_now/buy_now_screen.dart';
import 'package:e_commerce/src/views/checkout/checkout_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                      child: const BuyNowScreen()));
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
              text: "Checkout",
              onpressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeftWithFade,
                        duration: const Duration(seconds: 1),
                        child: const CheckOutScreen()));
              })),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.08),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: SizedBox(
                    width: size.width,
                    height: 150,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return Image.asset(
                          "assets/images/paypal.webp",
                          //fit: BoxFit.cover,
                        );
                      },
                      autoplay: true,
                      itemCount: 5,
                      itemWidth: 300,
                      layout: SwiperLayout.STACK,
                    ),
                  ),
                ),
              ),
              //
              SizedBox(
                height: size.height * 0.03,
              ),
              //
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
              SizedBox(
                height: size.height * 0.04,
              ),

              //
              Text(
                "Select Payment Option",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.05),
              ),
              //
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rightToLeftWithFade,
                      //         duration: const Duration(seconds: 1),
                      //         child: const PaymentScreen()));
                    },
                    child: Container(
                      width: size.width / 2.5,
                      height: size.height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade600,
                        borderRadius: BorderRadius.circular(
                            15), // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 3, // Spread radius
                            blurRadius: 6, // Blur radius
                            offset: const Offset(
                                0, 5), // Offset (position) of the shadow
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.paypal,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Paypal",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rightToLeftWithFade,
                      //         duration: const Duration(seconds: 1),
                      //         child: const PaymentScreen()));
                    },
                    child: Container(
                      width: size.width / 2.5,
                      height: size.height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.green.shade600,
                        borderRadius: BorderRadius.circular(
                            15), // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 3, // Spread radius
                            blurRadius: 6, // Blur radius
                            offset: const Offset(
                                0, 5), // Offset (position) of the shadow
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.money_dollar,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Cash",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
