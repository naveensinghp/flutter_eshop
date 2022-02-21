import 'package:flutter/material.dart';
import 'package:flutter_eshop/homepage.dart';
import 'package:flutter_eshop/splashscreen.dart';

// Project Started 20 Oct 2021
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.blueAccent
      ),
      // home: const MyHomePage(),
      home: SplashScreen(),
    );
  }
}


