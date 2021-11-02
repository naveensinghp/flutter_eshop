import 'package:flutter/material.dart';


class HomePageBottomCard extends StatelessWidget {
  //final Data appData;
  final leftSection = Column(
    children: const <Widget>[
       SizedBox(height: 50,),
       Padding(
         padding: EdgeInsets.only(right:50),
         child: Text('Meet new era of',
          style: TextStyle(
            fontSize: 20,
            color: Colors.pink
          ),      
      ), 
    ),
    SizedBox(height: 10),
      Padding(
        padding: EdgeInsets.only(right: 15),
        child: Text('Natural',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w800,
            color: Colors.black87
          ),
        ),
      ),

      Padding(
        padding: EdgeInsets.only(right: 15),
        child: Text('Beauty',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w800,
            color: Colors.black87
          ),
        ),
      ),
      
      Padding(
        padding: EdgeInsets.only(right: 20),
        child: 
          // Text('Cosmetics',
          //   style: TextStyle(
          //     fontSize: 50,
          //     fontWeight: FontWeight.w800,
          //     color: Colors.black87,
          //     backgroundColor: Colors.red
          //   ),
              FittedBox(
                fit: BoxFit.contain,
                child: Text('Cosmetics',
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                    backgroundColor: Colors.red
                  ),
              ),
        ),
      ),
      
      
      
      // Text('Beauty',
      //   style: TextStyle(
      //     fontSize: 50,
      //     fontWeight: FontWeight.w800,
      //     color: Colors.black87
      //   ),
      // ),
      // Text('Cosmetics',
      //   style: TextStyle(
      //     fontSize: 50,
      //     fontWeight: FontWeight.w800,
      //     color: Colors.black87
      //   ),
      // ),
    ],
  );

  final rightSection = Column(
    children: <Widget>[
      //Text('Button goes here')
      const SizedBox(height: 110),
      // Padding(
      //   padding: const EdgeInsets.fromLTRB(left:23),
      //   child: const Text('Hello'),
      //   ),
      ElevatedButton(
        onPressed: () {},
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.black87,
          size: 30.0,
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color(0xff00e2e3),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(24),
        ),
      )
    ],
    
  );
  
   HomePageBottomCard({Key? key}) : super(key: key);

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
        //padding: const EdgeInsets.only(left: 10,right: 200,top: 40),
        child: Row(
          children: <Widget>[
            leftSection,
            rightSection
          ],
        ),
        // child: Column(
        //   //mainAxisAlignment: MainAxisAlignment.start,
        //   children: const <Widget>[
        //     Text('Meet new era of',
        //       style: TextStyle(
        //         fontSize: 20,
        //         color: Colors.pink
        //       ),
        //     ),
        //     SizedBox(height: 10,),
        //     Text('Natural',
        //       style: TextStyle(
        //         fontSize: 50,
        //         fontWeight: FontWeight.w700,
        //         color: Colors.black87
        //       ),
        //     ),
        //     Text('Beauty',
        //       style: TextStyle(
        //         fontSize: 50,
        //         fontWeight: FontWeight.w700,
        //         color: Colors.black87
        //       ),
        //     ),
        //     Align(
             
        //       child: Text('Beautyddeff',
        //       style: TextStyle(
        //         fontSize: 50,
        //         fontWeight: FontWeight.w700,
        //         color: Colors.black87
        //       ),
        //     ),
        //     )
        //   ],
        // ),
      );
  }
}
