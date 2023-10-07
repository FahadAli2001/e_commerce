import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Color> colors = [
    Colors.pink.shade300,
    Colors.blue.shade400,
    Colors.orange.shade300,
    Colors.green.shade300
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white12,
      ),
      drawer: const Drawer(),
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
                      spreadRadius: 3, // Spread radius
                      blurRadius: 3, // Blur radius
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.055),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.035),
                  ),
                ],
              ),
              //
              SizedBox(
                height: size.height * 0.02,
              ),
              //
              SizedBox(
                width: size.width,
                height: size.height * 0.12,
                // color: Colors.blueGrey,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 11, vertical: 8),
                      child: Container(
                        width: size.width * 0.25,
                        decoration: BoxDecoration(
                          color: colors[index],
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 5, // Blur radius
                              offset: const Offset(
                                  0, 3), // Offset (position) of the shadow
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
