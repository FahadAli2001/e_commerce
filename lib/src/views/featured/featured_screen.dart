import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.white12,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
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
                child: GridView.count(
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.height * 0.4,
                  color: Colors.blue,
                ),
                Container(
                  width: size.width * 0.2,
                  height: size.height * 0.4,
                  color: Colors.blue,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
