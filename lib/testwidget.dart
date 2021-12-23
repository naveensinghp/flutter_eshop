import 'package:flutter/material.dart';
import 'package:flutter_eshop/addbutton.dart';

class TestWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          color: Colors.pink,
          padding: const EdgeInsets.all(9),
          child: const Text('Page'),
        ),
        Container(
          color: Colors.green,
          padding: const EdgeInsets.all(9),
          child: const Text('Shall We Begin'),
        ),
        Container(
          color: Colors.yellow,
          padding: const EdgeInsets.all(9),
          child: const Text('Shall We Begin'),
        )
      ],
    );
  //   return Column(
  //   children: <Widget>[
  //     Row(
  //       children: <Widget>[
  //         Expanded(
  //           child: 
  //           Container(
  //             width: 200,
  //             padding: const EdgeInsets.all(12),
  //             decoration: BoxDecoration(
  //               border: Border.all(),
  //               color: Colors.white,
  //               borderRadius: BorderRadius.circular(18),
  //             ),
  //           )
  //         ),
  //        Expanded(
  //           child: 
  //           Container(
  //             width: 200,
  //             height: 200,
  //             padding: const EdgeInsets.all(12),
  //             decoration: BoxDecoration(
  //               border: Border.all(),
  //               color: Colors.white,
  //               borderRadius: BorderRadius.circular(18),
  //             ),
  //           )
  //         )
  //       ],
  //     ),
  //     Row(
  //       children: <Widget>[
  //         Expanded(
  //           child: 
  //           Container(
  //             width: 200,
  //             padding: const EdgeInsets.all(12),
  //             decoration: BoxDecoration(
  //               border: Border.all(),
  //               color: Colors.white,
  //               borderRadius: BorderRadius.circular(18),
  //             ),
  //           )
  //         ),
  //         Expanded(
  //           child: 
  //           Container(
  //             width: 200,
  //             padding: const EdgeInsets.all(12),
  //             decoration: BoxDecoration(
  //               border: Border.all(),
  //               color: Colors.white,
  //               borderRadius: BorderRadius.circular(18),
  //             ),
  //           )
  //         )
  //       ],
  //     ),
  //     Row(
  //       children: <Widget>[
  //         Expanded(
  //           child: 
  //           Container(
  //             padding: const EdgeInsets.all(12),
  //             decoration: BoxDecoration(
  //               border: Border.all(),
  //               color: Colors.white,
  //               borderRadius: BorderRadius.circular(18),
  //             ),
  //           )
  //         )
  //       ],
  //     ),
  //   ],
  // );
  
    // return Stack(
    //   overflow: Overflow.visible,
    //   alignment: Alignment.topCenter,
    //   children: <Widget>[
    //     Container(
    //       height: 210,
    //       width: 200,
    //       decoration: BoxDecoration(
    //         color: Colors.white,
    //         borderRadius: BorderRadius.circular(20)
    //       ),
    //       child: Padding(
    //         padding: const EdgeInsets.only(top: 90,left: 10),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: <Widget>[
    //               const Text('Powder', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
    //               const SizedBox(height: 1.5,),
    //               const Text('With Olive Oil', style: TextStyle(fontSize: 20),),
    //               const SizedBox(height: 10,),
    //               Row(
    //                 children: <Widget>[
    //                   const Text(
    //                     '10.50',
    //                     style: TextStyle(
    //                       fontSize: 20,
    //                       fontWeight: FontWeight.w800
    //                     ),
    //                 ),
    //                   Expanded(child: Container()),
    //                   const AddProduct()
    //                 ],
    //               )
    //             ],
    //         ),
    //       ),
    //     ),
    //     const Positioned(
    //         top: -70,
    //         child: Image(
    //           width: 130,
    //           image: AssetImage("assets/image/rose.png"),
    //         ),
    //         // child: CircleAvatar(
    //         //   backgroundColor: Colors.white,
    //         //   radius: 60,
    //         //   child: 
    //         //   Image(
    //         //     image: AssetImage("assets/image/ok.png"),
    //         //   )
    //         //   // Icon(
    //         //   //   Icons.assistant_photo, 
    //         //   //   color: Colors.white, size: 50,
    //         //   // ),
    //         // )
    //       ),
    //   ],
      
    // );
  }
}









