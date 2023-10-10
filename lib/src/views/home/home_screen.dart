import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/featured/featured_screen.dart';
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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white12,
        title: const Text(
          "Bolt",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
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
                        child: Center(
                          child: text[index],
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
                          MaterialPageRoute(
                              builder: (context) => const FeaturedScreen()));
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
                      child: Container(
                        width: size.width * 0.4,
                        color: Colors.white,
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
                            const Text("Men T-Shirt"),
                          ],
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
                            const Text("Men T-Shirt"),
                          ],
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
