import 'package:flutter/material.dart';

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
          height: 200,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
            child: Column(
              children: const <Widget>[
                  Text('Warning !!!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 5,),
                  Text('You can not access this file', style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),
                  
                ],
            ),
          ),
        ),
        const Positioned(
            top: -60,
            child: CircleAvatar(
              backgroundColor: Colors.redAccent,
              radius: 60,
              child: 
              Icon(
                Icons.assistant_photo, 
                color: Colors.white, size: 50,
              ),
            )
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

