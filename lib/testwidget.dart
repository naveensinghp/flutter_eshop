import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 200,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        //border: Border.all(),
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        image: const DecorationImage(
          image: AssetImage("assets/image/ok.png"),
          alignment: Alignment(-0, -0.7)
        )
      ),
      child: testData,
    );
  }
}

Widget testData = 
Container(
  padding: const EdgeInsets.only(top: 20),
  child: Row(
    children: const <Widget>[
      Text('Powders',style: 
      TextStyle(fontSize: 30)
    )
    ],
  ),
);
// Row(
//   children: const <Widget>[
//       Text('Powder',style: 
//       TextStyle(fontSize: 30)
//     )
//   ],
// );

// return Stack(
//       children: [
//         Positioned(
//           child: Container(
//             height: 200,
//             width: 200,
//             decoration: BoxDecoration(
//          color: Colors.red,
//          border: Border.all(),
//          borderRadius: BorderRadius.circular(18),
//            image: const DecorationImage(
//              image:AssetImage("assets/image/palette.jpeg")
//            )
//            ),
//           ),
//         )
//       ],
//     );