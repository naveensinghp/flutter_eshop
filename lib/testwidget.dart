import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 50,right: 20),
             child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
               border: Border.all(),
               borderRadius: BorderRadius.circular(18),
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                children: const <Widget>[
                  Text(
                    'Powder',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  
                ],
              ),
            ),
          ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              image:  const DecorationImage(
                image: AssetImage("assets/image/palette.jpeg")
              )
           ),
           
        ),
        ),
      ],
    );
  }
}



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