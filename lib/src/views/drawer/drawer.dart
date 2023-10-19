import 'package:e_commerce/src/commans/custom_drawer/custom_drawer_menu_screen.dart';
import 'package:e_commerce/src/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainDrawer extends StatelessWidget {
  MainDrawer({super.key});

  final ZoomDrawerController drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return ZoomDrawer(
      controller: drawerController,
      style: DrawerStyle.defaultStyle,
      menuScreenWidth: size.width,
      mainScreen: const HomeScreen(),
      menuScreen: const CustomDrawerMenuScreen(),
      mainScreenTapClose: true,
      duration: const Duration(milliseconds: 100),
      mainScreenScale: 0.2,
      moveMenuScreen: false,
      borderRadius: 24.0,
      showShadow: true,
    );
  }
}
