
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Product.dart';
import 'package:flutter_application_1/pages/categerios.dart';
import 'package:flutter_application_1/pages/discountpage.dart';
import 'package:flutter_application_1/pages/homehder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
           Homeheder(), 
           SizedBox( 
            height: 20,
           ),
            Categories(),
            SizedBox(
              height: 20,
            ),
            Discountpage(),
            SizedBox(
              height: 10,
            ),
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
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: gridProduct(product: demoProducts[0]),
              ),
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1),
      margin: EdgeInsets.zero,
      color: Colors.white,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 1.0, mainAxisSpacing: 1.0), 
        itemCount: demoProducts.length,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  demoProducts[index].images[0],
                ),
                //fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 15,
                    bottom: 35,
                    child: Center(
                      child: Container(
                        child: Text(
                          product.title,
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 65,
                    bottom: 10,
                    child: Container(
                      child: Text(
                        "${product.price}",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
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
