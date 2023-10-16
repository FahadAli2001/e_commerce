import 'dart:async';

import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:e_commerce/src/views/welcome/welcome_screen.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  VideoPlayerController? controller;
  Future<void>? initializeVedioPlayerFuture;
  @override
  void initState() {
    controller = VideoPlayerController.asset("assets/gif/gif.mp4");
    initializeVedioPlayerFuture = controller!.initialize().then((_) {
      controller!.setVolume(0); // Mute the video
      controller!.play(); // Start playing the video
    });

    controller!.setVolume(0);

    super.initState();
    Timer(const Duration(seconds: 9), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    });
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(color: blueColor
            // gradient: LinearGradient(
            //     colors: [blueColor, Colors.white10],
            //     begin: Alignment.bottomLeft,
            //     end: Alignment.topRight,
            //     tileMode: TileMode.clamp)),
            ),
        child: FutureBuilder(
          future: initializeVedioPlayerFuture,
          builder: (context, snapshot) {
            return VideoPlayer(controller!);
          },
        ),
        // child: Center(
        //   child: Stack(
        //     children: [
        //       SizedBox(
        //         width: size.width * 0.5,
        //         height: size.height * 0.3,
        //       ),
        //       Positioned(
        //         top: size.height * 0.1,
        //         left: size.width * 0.06,
        //         child: FaIcon(
        //           FontAwesomeIcons.cartShopping,
        //           color: Colors.orange.shade400,
        //           size: size.width * 0.3,
        //         ),
        //       ),
        //       Positioned(
        //           top: size.height * 0.05,
        //           left: size.width * 0.08,
        //           child: Text(
        //             "E-Commerce",
        //             style: TextStyle(
        //                 color: Colors.orange.shade400,
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: size.width * 0.05),
        //           ))
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
