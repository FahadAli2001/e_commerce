import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class KidsCategoryScreen extends StatefulWidget {
  const KidsCategoryScreen({super.key});

  @override
  State<KidsCategoryScreen> createState() => _KidsCategoryScreenState();
}

class _KidsCategoryScreenState extends State<KidsCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade300,
        centerTitle: true,
        title: const Text(
          "For Kids",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.leftToRightWithFade,
                      duration: const Duration(seconds: 1),
                      child: MainDrawer()));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
          child: Expanded(
            child: GridView.builder(
              itemCount: 5,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: size.height * 0.3,
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      // Navigator.pushReplacement(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rightToLeftWithFade,
                      //         duration: const Duration(seconds: 1),
                      //         child: const SingleProductScreen()));
                    },
                    child: Card(
                      elevation: 10,
                      child: Container(
                        width: size.width * 0.3,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/shirt.jpg",
                                width: size.width,
                                height: size.height * 0.2,
                                fit: BoxFit.cover,
                              ),
                              //
                              const Text("\$55.00"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Kids T-Shirt",
                                    style: TextStyle(
                                        color: Colors.orange.shade300),
                                  ),
                                  const Icon(
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
                  ),
                );
              },
            ),
          )),
    );
  }
}
