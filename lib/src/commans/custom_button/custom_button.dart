import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final double? width;
  final double? height;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? borderCircular;
  const CustomButton(
      {super.key,
      this.borderCircular,
      this.textColor,
      this.fontWeight,
      required this.text,
      required this.onpressed,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [blueColor, Colors.blue.shade700],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(borderCircular!),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: fontWeight),
        )),
      ),
    );
  }
}
