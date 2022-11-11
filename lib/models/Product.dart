import 'package:flutter/material.dart';

class Product {
  String? uuid;
  final String title;
  final String description;
  final String categoryId;
  final List<String> images;
  final List<String> colors;
  final double rating;
  final double price;
  final bool isFavourite;
  final bool isPopular;

  Product(
      {required this.title,
      required this.description,
      required this.categoryId,
      required this.images,
      required this.colors,
      required this.rating,
      required this.price,
      this.isFavourite = false,
      this.isPopular = false});

  
} 
List<Product> demoProducts = [
    Product(
      categoryId: "",
      images: [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
      colors: [
        Color(0xFFF6625E).toString(),
        Color(0xFF836DB8).toString(),
        Color(0xFFDECB9C).toString(),
        Colors.white.toString(),
      ],
      title: "Wireless Controller for PS4™",
      price: 64.99,
      description: "",
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    Product(
      categoryId: "",
      images: [
        "assets/images/Image Popular Product 2.png",
      ],
      colors: [
        Color(0xFFF6625E).toString(),
        Color(0xFF836DB8).toString(),
        Color(0xFFDECB9C).toString(),
        Colors.white.toString(),
      ],
      title: "Nike Sport White - Man Pant",
      price: 50.5,
      description: "description",
      rating: 4.1,
      isPopular: true,
    ),
    Product(
      categoryId: "",
      images: [
        "assets/images/glap.png",
      ],
      colors: [
        Color(0xFFF6625E).toString(),
        Color(0xFF836DB8).toString(),
        Color(0xFFDECB9C).toString(),
        Colors.white.toString(),
      ],
      title: "Gloves XC Omega - Polygon",
      price: 36.55,
      description: "",
      rating: 4.1,
      isFavourite: true,
      isPopular: true,
    ),
    Product(
      categoryId: "",
      images: [
        "assets/images/wireless headset.png",
      ],
      colors: [
        Color(0xFFF6625E).toString(),
        Color(0xFF836DB8).toString(),
        Color(0xFFDECB9C).toString(),
        Colors.white.toString(),
      ],
      title: "Logitech Head",
      price: 20.20,
      description: "",
      rating: 4.1,
      isFavourite: true,
    ),
  ];
