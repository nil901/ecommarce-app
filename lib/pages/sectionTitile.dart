import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.press,
    required this.text,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
           text,
            style: TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          GestureDetector(  
            onTap: () {},
            child: Text("See More"), 

          )
        ],
      ),
    );
  }
}
