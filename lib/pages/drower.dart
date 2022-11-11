import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawar extends StatelessWidget {
  final imageurl =
      "https://nileshnirgude.com/wp-content/uploads/2021/11/Nilesh-picture-1.1-1.png";
  @override
  Widget build(BuildContext) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName:
                    Text("Nilesh", style: TextStyle(color: Colors.black)),
                accountEmail: Text(
                  "pathaknilesh1998@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text(
                "EmailMe",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
