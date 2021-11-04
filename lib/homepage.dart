import 'package:flutter/material.dart';
import 'package:flutter_eshop/colors.dart' as color;
//import 'package:flutter_eshop/homepagecard.dart';

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
        //child: HomePageBottomCard(),
        child: Container(
          padding: const EdgeInsets.only(left: 40, top: 40, right: 10),
          height: 410,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               const Text(
                'Make new era of',
                  style: TextStyle(
                  fontSize: 20, 
                  color: Colors.pink
                ),
              ),
              const SizedBox(height: 2),
              Container(
                padding: const EdgeInsets.only(top: 2),
                child: Row(
                  children: <Widget>[
                    const Text(
                      'Natural',
                      style: TextStyle(
                          fontSize: 60,
                          color: Colors.black87,
                          fontWeight: FontWeight.w800),
                    ),
                    Expanded(child: Container()),
                    Container(
                      padding: const EdgeInsets.only(right: 25,),
                      margin: const EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.black87,
                          size: 30.0,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff00e2e3),
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(24),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Text(
                'Beauty',
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.black87,
                    fontWeight: FontWeight.w800),
              ),
              const Text(
                'Cosmetics',
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.black87,
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
        ),
      ),
    );
  }
}
