import 'package:flutter/material.dart '; 
class Homeheder extends StatelessWidget {
  const Homeheder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Search Product",
                icon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 59, 58, 58),
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  //borderRadius: BorderRadius.circular(50),
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/images/bell.png"),
              ),
              Positioned(
                top: -3,
                right: 0,
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF4848),
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: Colors.white),
                  ), 
                  child: Center( 
                    child: Text("3" ,style: TextStyle( 
                      color: Colors.white , 
                       fontSize: 9), 
                         
                      ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
