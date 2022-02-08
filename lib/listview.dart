import 'package:flutter/material.dart';
import 'package:flutter_eshop/testwidget.dart';


class ProductListview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: productTest(),
    );
  }


  Widget productTest(){
    return GridView.count(
        crossAxisCount: 2,
      children: List.generate(2,(index){
        return TestWidget();
      }),
    );
  }

}