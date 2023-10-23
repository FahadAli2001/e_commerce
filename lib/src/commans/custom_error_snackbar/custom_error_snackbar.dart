import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class CustomErrorSnackbar extends StatelessWidget {
  const CustomErrorSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.error(
            message: "Please check your internet connection",
          ),
          animationDuration: const Duration(milliseconds: 1000),
          dismissType: DismissType.onTap,
        );

        return Container();
      },
    );
  }
}
