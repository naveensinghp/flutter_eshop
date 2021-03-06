
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xFF98d6ed),
      // body: Container(
      //   height: 400,
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //       image: ExactAssetImage('assets/image/test3.png'),
      //     ),
      //   ),
      //   child: Container(
      //     height: 400,
      //     // color: Colors.white,
      //   ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/image/test3.png'),
              ),
            ),
            child: Container(
              height: 400,
              // color: Colors.white,
            ),
          ),
         Container(
           padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 50),
           height: 400,
           alignment: Alignment.bottomCenter,
           decoration: const BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                 topRight: Radius.circular(20),
                 topLeft: Radius.circular(20)
               ),
           ),
           child: Column(
             children: [
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: const [
                   Text('eet new era of',
                     style: TextStyle(
                       fontSize: 20,
                       fontFamily: 'gilroy',
                       color: Colors.pink,
                     ),
                   ),
                   SizedBox(height: 10,),
                 ],
               ),
             ],
           ),
         )
        ],
      ),
    );
  }

}