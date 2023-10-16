import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Icon? sufficIcon;
  final String? hintText;
  const CustomTextField(
      {super.key, this.controller, this.sufficIcon, this.hintText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * 0.04,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(suffixIcon: sufficIcon, hintText: hintText),
      ),
    );
  }
}
