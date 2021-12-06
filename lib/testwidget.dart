import 'package:flutter/material.dart';
import 'package:flutter_eshop/addbutton.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 200,
    //   height: 200,
    //   padding: const EdgeInsets.all(12),
    //   decoration: BoxDecoration(
    //     //border: Border.all(),
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(18),
    //     image: const DecorationImage(
    //       image: AssetImage("assets/image/ok.png"),
    //       alignment: Alignment(0, -0.9)
    //     )
    //   ),
    // );
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          height: 210,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 90,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  const Text('Powder', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  const SizedBox(height: 1.5,),
                  const Text('With Olive Oil', style: TextStyle(fontSize: 20),),
                  const SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      const Text(
                        '10.50',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                        ),
                    ),
                      Expanded(child: Container()),
                      const AddProduct()
                    ],
                  )
                ],
            ),
          ),
        ),
        const Positioned(
            top: -70,
            child: Image(
              width: 130,
              image: AssetImage("assets/image/rose.png"),
            ),
            // child: CircleAvatar(
            //   backgroundColor: Colors.white,
            //   radius: 60,
            //   child: 
            //   Image(
            //     image: AssetImage("assets/image/ok.png"),
            //   )
            //   // Icon(
            //   //   Icons.assistant_photo, 
            //   //   color: Colors.white, size: 50,
            //   // ),
            // )
          ),
      ],
      
    );
  }
}


Widget myGrayBox = Container(
  width: 100,
  height: 100,
  color: Colors.green,
);

Widget myRedBox = Container(
  width: 90,
  height: 90,
  color: Colors.red,
);


Widget testData = 
Container(
  padding: const EdgeInsets.only(top: 20),
  child: Row(
    children: const <Widget>[
      Text(
        'Powders \n Helo',style: 
      TextStyle(fontSize: 20)
    )
    ],
  ),
);

