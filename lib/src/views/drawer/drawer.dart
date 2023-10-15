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
    // return Scaffold(
    //   appBar: AppBar(
    //     centerTitle: true,
    //     elevation: 0,
    //     backgroundColor: Colors.white,
    //     title: const Text(
    //       "Bolt",
    //       style: TextStyle(fontWeight: FontWeight.bold),
    //     ),
    //     leading: InkWell(
    //         onTap: () {
    //           // ZoomDrawer.of(context)!.toggle();
    //           if (ZoomDrawer.of(context)!.isOpen()) {
    //             ZoomDrawer.of(context)!.close();
    //           } else {
    //             ZoomDrawer.of(context)!.open();
    //           }
    //         },
    //         child: const Icon(
    //           Icons.menu,
    //           color: Colors.grey,
    //         )),
    //   ),
    //   body: ZoomDrawer(
    //     controller: drawerController,
    //     style: DrawerStyle.defaultStyle,
    //     menuScreenWidth: size.width,
    //     mainScreen: const HomeScreen(),
    //     menuScreen: const CustomDrawerMenuScreen(),
    //     mainScreenTapClose: true,
    //     androidCloseOnBackTap: true,
    //     mainScreenScale: 0.2,
    //     moveMenuScreen: false,
    //     borderRadius: 24.0,
    //     showShadow: true,
    //     slideWidth: MediaQuery.of(context).size.width * .65,
    //     openCurve: Curves.fastOutSlowIn,
    //     closeCurve: Curves.easeIn,
    //   ),
    // );
    return ZoomDrawer(
      controller: drawerController,
      style: DrawerStyle.defaultStyle,
      menuScreenWidth: size.width,
      mainScreen: const HomeScreen(),
      menuScreen: const CustomDrawerMenuScreen(),
      mainScreenTapClose: true,
      // androidCloseOnBackTap: true,
      mainScreenScale: 0.2,
      moveMenuScreen: false,
      borderRadius: 24.0,
      showShadow: true,
      // slideWidth: MediaQuery.of(context).size.width * .65,
      // openCurve: Curves.fastOutSlowIn,
      //  closeCurve: Curves.easeIn,
    );
  }
}
