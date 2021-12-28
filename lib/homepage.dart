import 'package:flutter/material.dart';
import 'package:flutter_eshop/constant.dart';
import 'package:flutter_eshop/secondpage.dart';
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
          padding: const EdgeInsets.only(left: 30, top: 40, right: 10),
          height: 410,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //leftSection(),
              Row(
                children: const [
                  Text(
                    'Meet new era of',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.pink,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  const [
                      Text(
                        'Natural',
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.black87,
                            fontWeight: FontWeight.w800)
                        ,
                      ),
                      Text(
                        'Beauty',
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.black87,
                            fontWeight: FontWeight.w800)
                        ,
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  roundedButton(),
                ],
              ),

              Row(
                children: const [
                  Text(
                    'Cosemtics',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.black87,
                        fontWeight: FontWeight.w800)
                    ,
                  ),
                ],
              )
              // Row(
              //   children: [
              //     const Expanded(
              //         flex: 4,
              //         child:  HomeText(),
              //     ),
              //     Expanded(
              //         flex: 2,
              //         child: roundedButton()),
              //   ],
              // ),
              // Column(
              //   children: const [
              //     Text(
              //       'Beauty',
              //       style: TextStyle(
              //           fontSize: 44,
              //           color: Colors.black87,
              //           fontWeight: FontWeight.w800)
              //       ,
              //     ),
              //   ],
              // )
              // Container(
              //   padding: const EdgeInsets.only(top: 2),
              //   child: Row(
              //     children: <Widget>[
              //       const Text(
              //         'Natural',
              //         style: TextStyle(
              //             fontSize: 60,
              //             color: Colors.black87,
              //             fontWeight: FontWeight.w800),
              //       ),
              //       const Spacer(flex: 2,),
              //       Container(
              //         padding: const EdgeInsets.only(right: 20,top: 25),
              //         child: roundedButton(),
              //         // child: ElevatedButton(
              //         //   onPressed: () {
              //         //     _navigateToNextScreen(context);
              //         //   },
              //         //   child: const Icon(
              //         //     Icons.arrow_forward,
              //         //     color: Colors.black87,
              //         //     size: 30.0,
              //         //   ),
              //         //   style: ElevatedButton.styleFrom(
              //         //     primary: const Color(0xff00e2e3),
              //         //     shape: const CircleBorder(),
              //         //     padding: const EdgeInsets.all(24),
              //         //   ),
              //         // ),
              //       )
              //     ],
              //   ),
              // ),
              // const Text(
              //   'Beauty',
              //   style: TextStyle(
              //       fontSize: 60,
              //       color: Colors.black87,
              //       fontWeight: FontWeight.w800),
              // ),
              // const Text(
              //   'Cosmetics',
              //   style: TextStyle(
              //       fontSize: 60,
              //       color: Colors.black87,
              //       fontWeight: FontWeight.w800),
              // )
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProductPage()));
  }

  Widget roundedButton(){
    return Container(
      padding: const EdgeInsets.only(bottom: 10,right: 15),
      child: ElevatedButton(
        onPressed: (){
          _navigateToNextScreen(context);
        },
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
    );
  }

}