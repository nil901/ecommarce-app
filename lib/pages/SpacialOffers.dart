import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sectionTitile.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.categorey,
    required this.images,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);
  final String categorey, images;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 100,
        width: 242,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                images,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff343434).withOpacity(0.4),
                      Color(0xff343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "$categorey\n",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text: "$numOfBrands Brands",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ))
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SpacialOffers extends StatelessWidget {
  const SpacialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Spacial For you",
          press: () {},
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                images: "assets/images/Image Banner 2.png",
                categorey: "SmartPhones",
                numOfBrands: 18,
                press: (() {}),
              ),
              SpecialOfferCard(
                images: "assets/images/Image Banner 3.png",
                categorey: "fashion",
                numOfBrands: 24,
                press: (() {}),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
