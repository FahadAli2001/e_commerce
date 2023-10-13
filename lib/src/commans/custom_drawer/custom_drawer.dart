import 'package:e_commerce/src/commans/custom_drawer/custom_drawer_menu_screen.dart';
import 'package:e_commerce/src/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  ZoomDrawerController drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ZoomDrawer(
      controller: drawerController,
      style: DrawerStyle.defaultStyle,
      mainScreenScale: 0.15,
      androidCloseOnBackTap: true,
      menuScreenWidth: size.width,
      mainScreenTapClose: true,
      mainScreen: const HomeScreen(),
      menuScreen: const CustomDrawerMenuScreen(),
      borderRadius: 50,
      moveMenuScreen: false,
      openCurve: Curves.linear,
      closeCurve: Curves.easeIn,
      showShadow: true,
      slideWidth: size.width * 0.6,
    );
  }
}
