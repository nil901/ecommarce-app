import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Homepage.dart';
import 'package:flutter_application_1/pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'LoginPage',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => HomePage(),
        });
  }
}
