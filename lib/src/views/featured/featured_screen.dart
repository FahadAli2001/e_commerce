import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/home/home_screen.dart';
import 'package:e_commerce/src/views/single_product/single_product.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({super.key});

  @override
  State<FeaturedScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      type: PageTransitionType.leftToRightWithFade,
                      duration: const Duration(seconds: 1),
                      child: const HomeScreen()));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Featured",
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.08),
            ),
            //
            SizedBox(
              height: size.height * 0.02,
            ),
            //
            Expanded(
                child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 20,
                  mainAxisExtent: size.height * 0.3),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              duration: const Duration(seconds: 1),
                              child: const SingleProductScreen()));
                    },
                    child: Card(
                      elevation: 6,
                      child: Container(
                        width: size.width * 0.2,
                        height: size.height * 0.4,
                        color: Colors.white12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/shirt.jpg",
                              fit: BoxFit.cover,
                              height: size.height * 0.2,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5),
                              child: Text("\$34.00"),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Text("Men Shirt"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
