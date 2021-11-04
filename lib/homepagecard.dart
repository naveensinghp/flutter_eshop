import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePageBottomCard extends StatelessWidget {
  //final Data appData;
  final leftSection = const Padding(
    padding: EdgeInsets.only(top: 50,left: 50),
    child: Align( 
      alignment: Alignment.topLeft,
      child: Text('Make new era of',
        style: TextStyle(
        fontSize: 20,
        //color: color.AppColor.homePageTitleFirst
        color: Colors.pink

        ),
      ),
    ),
    
  );
  // const SizedBox(
  //   height: 1,
  //   child: Padding(
  //     padding: EdgeInsets.all(1),
  //     child: Align(
  //       alignment: Alignment.topLeft,
  //       child: Text('Make new era',
  //       style: TextStyle(
  //       fontSize: 20,
  //       color: Colors.pink
  //       ),
  //     ),
  //   ),
  //  ),
  // );
  
  // Padding(
  //   padding: EdgeInsets.all(10),
  //   child: Align( 
  //     alignment: Alignment.topLeft,
  //     child: Text('Make new era',
  //     style: TextStyle(
  //     fontSize: 20,
  //     color: Colors.pink
  //     ),
  //     ),
  //   )
  // );
  
  // const Align(
  //   alignment: Alignment.topLeft,
  //   child: Text('Make new era',
  //     style: TextStyle(
  //     fontSize: 20,
  //     color: Colors.pink
  //   ),
  // ),
  // );
  final centerSection = Row(
    children: const<Widget>[
      Text('so'),
      // Expanded(
      //   child: Text('Cosmetics',
      //    style: TextStyle(
      //       fontSize: 50,
      //       fontWeight: FontWeight.w800,
      //       color: Colors.black87
      //     ),
      // ),
    
      // Text('Cosmetics',
      //     style: TextStyle(
      //       fontSize: 50,
      //       fontWeight: FontWeight.w800,
      //       color: Colors.black87
      //     ),
      //   ),
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
        child: Column(
          children: <Widget>[
            leftSection,
            //centerSection,
            //rightSection
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
