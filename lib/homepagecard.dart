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
        padding: const EdgeInsets.only(left: 10,right: 200,top: 40),
        child: Column(
          children: const <Widget>[
            Text('Meet new era of',
              style: TextStyle(
                fontSize: 20,
                color: Colors.pink
              ),
            ),
            SizedBox(height: 10,),
            Text('Natural',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black87
              ),
            ),
            Text('Beauty',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black87
              ),
            ),
            Text('Cosmetics',
              style: TextStyle(
                overflow: TextOverflow.visible,
                fontSize: 45,
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold,
                color: Colors.black87
              ),
            ),
          ],
        ),
        // child: const Text('Meet new era of',
        // style: TextStyle(
        //   fontSize: 20,
        //   color: Colors.pink
        //   ),
        // )
      );
  }
}
