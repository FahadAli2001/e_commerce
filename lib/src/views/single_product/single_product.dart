import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:flutter/material.dart';

class SingleProductScreen extends StatefulWidget {
  const SingleProductScreen({super.key});

  @override
  State<SingleProductScreen> createState() => _SingleProductScreenState();
}

class _SingleProductScreenState extends State<SingleProductScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: size.width / 2.1,
              height: size.height * 0.07,
              color: Colors.grey.shade400,
              child: Center(
                child: Text(
                  "Add To Cart",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.05),
                ),
              ),
            ),
            Container(
              width: size.width / 2.1,
              height: size.height * 0.07,
              color: blueColor,
              child: Center(
                child: Text(
                  "Buy Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.05),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                height: 200,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      "assets/images/shirt.jpg",
                      fit: BoxFit.cover,
                    );
                  },
                  autoplay: true,
                  itemCount: 5,
                  itemWidth: 200,
                  layout: SwiperLayout.STACK,
                ),
              ),
              //
              SizedBox(
                height: size.height * 0.02,
              ),
              //
              const Text(
                "Blue Shirt",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
              ),
              //
              Text(
                "\$42",
                style: TextStyle(
                    color: blueColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
              //
              SizedBox(
                height: size.height * 0.01,
              ),
              const Divider(
                thickness: 0.6,
                color: Colors.grey,
              ),
              //
              Row(
                children: [
                  Container(
                    width: size.width * 0.15,
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text(
                        "4.5",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  const Text(
                    "Very Good",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: size.width * 0.25,
                  ),
                  Text(
                    "49 reviews",
                    style: TextStyle(
                        color: blueColor, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              //
              const Divider(
                thickness: 0.6,
                color: Colors.grey,
              ),
              //
              SizedBox(
                height: size.height * 0.01,
              ),
              //
              Text(
                "Description",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.04),
              ),
              //
              SizedBox(
                height: size.height * 0.01,
              ),
              //
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                style: TextStyle(
                    color: Colors.black, fontSize: size.width * 0.032),
              ),
              //
              SizedBox(
                height: size.height * 0.01,
              ),
              const Divider(
                thickness: 0.6,
                color: Colors.grey,
              ),
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                        "Select Size",
                        style: TextStyle(
                            fontSize: size.width * 0.045,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Text(
                      "Select Color",
                      style: TextStyle(
                          fontSize: size.width * 0.045,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              //
              const Divider(
                thickness: 0.6,
                color: Colors.grey,
              ),
              //
              SizedBox(
                height: size.height * 0.02,
              ),
              //
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontal),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size.width * 0.16,
                      height: size.height * 0.07,
                      child: Card(
                        elevation: 5,
                        color: Colors.grey.shade200,
                        child: const Center(
                          child: Text(
                            "S",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.16,
                      height: size.height * 0.07,
                      child: Card(
                        elevation: 5,
                        color: blueColor,
                        child: const Center(
                          child: Text(
                            "M",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.16,
                      height: size.height * 0.07,
                      child: Card(
                        elevation: 5,
                        color: Colors.grey.shade200,
                        child: const Center(
                          child: Text(
                            "L",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.16,
                      height: size.height * 0.07,
                      child: Card(
                        elevation: 5,
                        color: Colors.grey.shade200,
                        child: const Center(
                          child: Text(
                            "XL",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
