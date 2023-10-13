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
              Text(
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
                    child: Center(
                      child: Text(
                        "4.5",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              //
              const Divider(
                thickness: 0.6,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
