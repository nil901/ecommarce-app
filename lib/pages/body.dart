import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Product.dart';
import 'package:flutter_application_1/pages/categerios.dart';
import 'package:flutter_application_1/pages/discountpage.dart';
import 'package:flutter_application_1/pages/homehder.dart';
import 'package:flutter_application_1/pages/sectionTitile.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'SpacialOffers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Homeheder(),
            Categories(),
            SizedBox(
              height: 20,
            ),
            Discountpage(),
            SizedBox(
              height: 10,
            ),
            //  SectionTitle(press: () {}, text: "Populer Product"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    demoProducts.length,
                    (index) => ProductCard(
                      product: demoProducts[index],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(19),
              child: gridProduct(product: demoProducts[0]),
            ),
          ],
        ),
      ),
    );
  }
}

class gridProduct extends StatelessWidget {
  const gridProduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 1.0, mainAxisSpacing: 0.0),
      itemCount: demoProducts.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 226, 217, 217),
            ),
            //borderRadius: BorderRadius.circular(6),
            color: Colors.grey[200],
          ),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset(demoProducts[index].images[0]),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                demoProducts[0].title,
                style: TextStyle(color: Colors.black),
                maxLines: 1,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          product.isFavourite ? Colors.grey[200] : Colors.red),
                  child: SvgPicture.asset(
                    "assets/icons/Heart Icon_2.svg",
                    color: product.isFavourite
                        ? Color(0xFFFF4848)
                        : Color(0XFFDBDEE4),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 100,
    this.aspectRetion = 1.02,
    required this.product,
  }) : super(key: key);
  final double width, aspectRetion;
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: aspectRetion,
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(product.images[0]),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              demoProducts[0].title,
              style: TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${product.price}",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 252, 56, 21)),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: product.isFavourite
                            ? Colors.grey[200]
                            : Colors.red),
                    child: SvgPicture.asset(
                      "assets/icons/Heart Icon_2.svg",
                      color: product.isFavourite
                          ? Color(0xFFFF4848)
                          : Color(0XFFDBDEE4),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
