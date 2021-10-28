import 'package:flutter/material.dart';
import 'package:flutter_eshop/model/data.dart';

class HomePageBottomSheet extends StatelessWidget {
  const HomePageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Data appData; 
    return Container(
      height: 400,
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: Colors.red
      //   ),
      //   borderRadius: const BorderRadius.all(Radius.circular(20)),
      // ),
      child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
               Text('Helo World')] 
          ),
       ),
    );
  }
}
