import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/featured/featured_screen.dart';
import 'package:e_commerce/src/views/kids_category/kids_category.dart';
import 'package:e_commerce/src/views/men_category/men_category.dart';
import 'package:e_commerce/src/views/newborn_category/newborn_category.dart';
import 'package:e_commerce/src/views/single_product/single_product.dart';
import 'package:e_commerce/src/views/women_category/women_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final ZoomDrawerController drawerController = ZoomDrawerController();

  List<Color> colors = [
    Colors.pink.shade300,
    Colors.blue.shade400,
    Colors.orange.shade300,
    Colors.green.shade300
  ];
  List<Text> text = [
    const Text(
      "Women",
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    ),
    const Text(
      "Men",
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    ),
    const Text(
      "Kids",
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    ),
    const Text(
      "New Born",
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    ),
  ];

  final ZoomDrawerController zoomDrawerController = ZoomDrawerController();

  @override
  void initState() {
    super.initState();
    ZoomDrawer.of(context)!.open();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Tickers",
          style: TextStyle(fontWeight: FontWeight.bold, color: blueColor),
        ),
        leading: InkWell(
            onTap: () {
              if (ZoomDrawer.of(context)!.isOpen()) {
                ZoomDrawer.of(context)!.close();
              } else {
                ZoomDrawer.of(context)!.open();
              }
              ZoomDrawer.of(context)!.toggle();
              // ZoomDrawer.of(context)!.open();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.grey,
            )),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color:
                          Colors.grey.withOpacity(0.5), // Color of the shadow
                      spreadRadius: 5, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset:
                          const Offset(0, 2), // Offset (position) of the shadow
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: "Search Your Product",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              //
              SizedBox(
                height: size.height * 0.03,
              ),
              //

              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.05),
                ),
              ),
              //
              SizedBox(
                height: size.height * 0.02,
              ),
              //
              SizedBox(
                width: size.width,
                height: size.height * 0.1,
                // color: Colors.blueGrey,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 11, vertical: 8),
                      child: InkWell(
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type:
                                        PageTransitionType.rightToLeftWithFade,
                                    duration: const Duration(seconds: 1),
                                    child: const WomenCategoryScreen()));
                          } else if (index == 1) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type:
                                        PageTransitionType.rightToLeftWithFade,
                                    duration: const Duration(seconds: 1),
                                    child: const MenCategory()));
                          } else if (index == 2) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type:
                                        PageTransitionType.rightToLeftWithFade,
                                    duration: const Duration(seconds: 1),
                                    child: const KidsCategoryScreen()));
                          } else if (index == 3) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type:
                                        PageTransitionType.rightToLeftWithFade,
                                    duration: const Duration(seconds: 1),
                                    child: const NewbornCategoryScreen()));
                          }
                        },
                        child: Container(
                          width: size.width * 0.25,
                          decoration: BoxDecoration(
                            color: colors[index],
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 5, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: const Offset(
                                    0, 3), // Offset (position) of the shadow
                              ),
                            ],
                          ),
                          child: Center(
                            child: text[index],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              //
              SizedBox(
                height: size.height * 0.02,
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.05),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              duration: const Duration(seconds: 1),
                              child: const FeaturedScreen()));
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.035),
                    ),
                  ),
                ],
              ),
              //
              SizedBox(
                height: size.height * 0.02,
              ),
              //
              Container(
                width: size.width,
                height: size.height * 0.3,
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeftWithFade,
                                  duration: const Duration(seconds: 1),
                                  child: const SingleProductScreen()));
                        },
                        child: Container(
                          width: size.width * 0.4,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/shirt.jpg",
                                  width: size.width,
                                  height: size.height * 0.23,
                                  fit: BoxFit.cover,
                                ),
                                //

                                const Text("\$55.00"),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Men T-Shirt"),
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              //
              SizedBox(
                height: size.height * 0.03,
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Sell",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.05),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.035),
                  ),
                  //
                ],
              ),
              //
              SizedBox(
                height: size.height * 0.03,
              ),
              //
              Container(
                width: size.width,
                height: size.height * 0.3,
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: size.width * 0.4,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/shirt.jpg",
                                width: size.width,
                                height: size.height * 0.23,
                                fit: BoxFit.cover,
                              ),
                              //

                              const Text("\$55.00"),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Men T-Shirt"),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
