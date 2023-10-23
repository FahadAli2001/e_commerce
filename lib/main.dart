import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:e_commerce/src/controller/auth/auth_controller.dart';
import 'package:e_commerce/src/controller/connectivity/connectivity_controller.dart';
import 'package:e_commerce/src/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  checkInternetConnection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthController())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-commerce',
        theme: ThemeData(
            useMaterial3: true,
            primaryColor: blueColor,
            primarySwatch: blueMaterialColor,
            inputDecorationTheme: InputDecorationTheme(focusColor: blueColor)),
        home: const SplashScreen(),
      ),
    );
  }
}
