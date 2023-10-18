import 'dart:developer';

import 'package:e_commerce/src/views/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:page_transition/page_transition.dart';

class AuthController with ChangeNotifier {
  bool? hasBioSensor;

  LocalAuthentication localAuthentication = LocalAuthentication();

  Future<void> checkBioMetricSensor(context) async {
    try {
      hasBioSensor = await localAuthentication.canCheckBiometrics;
      //log(hasBioSensor.toString());
      if (hasBioSensor!) {
        getLocalAuth(context);
      } else {}
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> getLocalAuth(context) async {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    bool isAuth = false;

    try {
      // Check and temporarily remove the "secure" flag
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

      isAuth = await localAuthentication.authenticate(
          localizedReason: "Scan your finger print to login",
          options: const AuthenticationOptions(
              stickyAuth: false,
              sensitiveTransaction: false,
              biometricOnly: true,
              useErrorDialogs: true));

      // After authentication, restore the "secure" flag
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);

      if (isAuth == true) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                duration: const Duration(seconds: 1),
                child: MainDrawer()));
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
