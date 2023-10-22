import 'package:flutter/material.dart';

Color blueColor = const Color(0xff4eabf2);

 MaterialColor blueMaterialColor = MaterialColor(
  50,
  <int, Color>{
    50: blueColor.withOpacity(0.1),
    100: blueColor.withOpacity(0.2),
    200: blueColor.withOpacity(0.3),
    300: blueColor.withOpacity(0.4),
    400: blueColor.withOpacity(0.5),
    500: blueColor,
    600: blueColor.withOpacity(0.7),
    700: blueColor.withOpacity(0.8),
    800: blueColor.withOpacity(0.9),
    900: blueColor,
  },
);