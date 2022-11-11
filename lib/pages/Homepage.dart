import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/body.dart';
import 'package:flutter_application_1/pages/drower.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "E-commarce",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color.fromARGB(255, 236, 221, 221),
          //toolbarHeight: 100,
        ),
        drawer: MyDrawar(),
        body: Body(),
      ),
    );
  }
}
