import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  const CustomButton({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: size.width * 0.7,
        height: size.height * 0.06,
        decoration: BoxDecoration(
          color: blueColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
            child: Text(
          text,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
