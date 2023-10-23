import 'dart:async';
import 'dart:developer';

import 'package:e_commerce/src/commans/custom_error_snackbar/custom_error_snackbar.dart';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

final Connectivity connectivity = Connectivity();
late StreamSubscription<ConnectivityResult> subscription;

void checkInternetConnection() {
  subscription = Connectivity().onConnectivityChanged.listen((result) {
    if (result == ConnectivityResult.wifi ||
        result == ConnectivityResult.mobile) {
      log("Internet is available");
    } else {
      // showTopSnackBar(
      //   Overlay.of(context),
      //   const CustomSnackBar.error(
      //     message: "Please check your internet connection",
      //   ),
      //   animationDuration: const Duration(milliseconds: 1000),
      //   dismissType: DismissType.onTap,
      // );
      log("No internet");
    }
  });
}
