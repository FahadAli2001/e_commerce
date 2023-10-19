import 'package:e_commerce/src/const/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomCartBox extends StatelessWidget {
  const CustomCartBox({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Card(
      elevation: 10,
      child: Container(
        width: size.width,
        height: size.height * 0.2,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/shirt.jpg",
                fit: BoxFit.cover,
                width: 150,
                height: 200,
              ),
              //
              SizedBox(
                width: size.width * 0.02,
              ),
              //
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Women t-shirt",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.04),
                  ),
                  Text(
                    "Lotto ltd",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.04),
                  ),
                  Text(
                    "\$34.50",
                    style: TextStyle(
                        color: blueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.04),
                  ),
                  Row(
                    children: [
                      Card(
                        elevation: 10,
                        child: Container(
                          width: 35,
                          height: 35,
                          color: Colors.white,
                          child: const Center(
                              child: Icon(
                            Icons.remove,
                            color: Colors.grey,
                          )),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: Container(
                          width: 35,
                          height: 35,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            "1",
                            style: TextStyle(
                                color: Colors.grey.shade900,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: Container(
                          width: 35,
                          height: 35,
                          color: Colors.white,
                          child: const Center(
                              child: Icon(
                            Icons.add,
                            color: Colors.grey,
                          )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              //
              Icon(
                Icons.cancel_outlined,
                color: Colors.grey.shade600,
                size: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
