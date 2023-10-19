import 'package:e_commerce/src/commans/custom_button/custom_button.dart';
import 'package:e_commerce/src/commans/custom_textfield/custom_textfield.dart';
import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          child: CustomButton(
              width: size.width * 0.9,
              height: size.height * 0.05,
              borderCircular: 0,
              fontWeight: FontWeight.bold,
              text: "Update Profile",
              onpressed: () {
                // Navigator.push(
                //     context,
                //     PageTransition(
                //         type: PageTransitionType.rightToLeftWithFade,
                //         duration: const Duration(seconds: 1),
                //         child: const CheckOutScreen()));
              })),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
          child: Column(
            children: [
              Text(
                "Payment",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.08),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const CustomTextField(
                hintText: "Name",
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const CustomTextField(
                hintText: "Gender",
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const CustomTextField(
                hintText: "Email",
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const CustomTextField(
                hintText: "Contact",
              )
            ],
          ),
        ),
      ),
    );
  }
}
