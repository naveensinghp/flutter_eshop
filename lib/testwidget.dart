import 'package:flutter/material.dart';
import 'package:flutter_eshop/addbutton.dart';

class TestWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          height: 210,
          width: 180,
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
                      const Text('10.50',
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
          ),
      ],

    );
  }
}









