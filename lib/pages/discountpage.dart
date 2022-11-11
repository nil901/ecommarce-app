import 'dart:ffi';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Discountpage extends StatelessWidget {
  const Discountpage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(),
//padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      // width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          // color: Color(0xFF4A3298),
          // borderRadius: BorderRadius.circular(20),
          ),
      child: ListView(
        children: [
          SizedBox(
            height: 200.0,
            width: double.infinity,
            child: Carousel(
              dotSize: 6.0,
              dotSpacing: 15.0,
              dotPosition: DotPosition.bottomCenter,
              //dotBgColor: Colors.transparent,
              dotColor: Colors.red,
              showIndicator: false,
              images: [
                Image.asset(
                  "assets/images/discountimage.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/oppodiscount.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/50_dicount.jpg",
                  fit: BoxFit.cover,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
