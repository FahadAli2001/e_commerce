import 'dart:async';
import 'dart:developer';
import 'package:connectivity_plus/connectivity_plus.dart'; 
import 'package:flutter/material.dart';
  
final Connectivity connectivity = Connectivity();
late StreamSubscription<ConnectivityResult> subscription;

class InternetConnectivityController with ChangeNotifier {
  String status = '';

  String checkInternetConnection() {
    subscription = Connectivity().onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        log(result.toString());
        status = "internet";
        log(status);
        notifyListeners();
      } else {
        log(result.toString());
        status = "no Internet";
        log(status);
        notifyListeners();
      }
    });
    return status;
  }
}
