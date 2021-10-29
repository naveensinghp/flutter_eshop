import 'package:flutter/material.dart';

class HomePageBottomCard extends StatelessWidget {
  //final Data appData; 
  
  const HomePageBottomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.white,
        height: 410,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
        ),
        padding: const EdgeInsets.only(left:50, top:50),
        child: const Text('Meet new era of',
        style: TextStyle(
          fontSize: 20,
          color: Colors.pink
          ),
        )
      );
  }
}
