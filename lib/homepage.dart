import 'package:flutter/material.dart';
import 'package:flutter_eshop/homepagecard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFF98d6ed);
    return Scaffold(
      backgroundColor: color,
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/image/one.jpg'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: HomePageBottomCard(),
      ),
    );
  }
}
