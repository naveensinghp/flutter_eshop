import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
     bottom: 10,
      
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
        //color: Colors.white,
        border: Border.all(),
        borderRadius: BorderRadius.circular(18),
          image: const DecorationImage(
            fit: BoxFit.fitHeight,
            image:AssetImage("assets/image/palette.jpeg")
          )
        ),
        
      ),
    );
  }
}

