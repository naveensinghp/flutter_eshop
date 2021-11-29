import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
         color: Colors.red,
         border: Border.all(),
         borderRadius: BorderRadius.circular(18),
           image: const DecorationImage(
             image:AssetImage("assets/image/palette.jpeg")
           )
           ),
          ),
        )
      ],
    );
  }
}



// Positioned(
//     left: 15,
      
//       child: Container(
//         height: 200,
//         width: 200,
//         decoration: BoxDecoration(
//         //color: Colors.white,
//         border: Border.all(),
//         borderRadius: BorderRadius.circular(18),
//           image: const DecorationImage(
//             image:AssetImage("assets/image/palette.jpeg")
//           )
//         ),
        
//       ),
//     );