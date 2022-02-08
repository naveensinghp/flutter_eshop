import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter_eshop/testwidget.dart';

class ProductData extends StatefulWidget {
  const ProductData({Key? key}) : super(key: key);

  @override
  State<ProductData> createState() => _MyProductWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyProductWidgetState extends State<ProductData> {
  List productData = [];
  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("json/product.json")
        .then((value) => {
              productData = json.decode(value),
            });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
      return SingleChildScrollView(
        child: TestWidget(),
      );
    //return TestWidget();
    // return Expanded(
    //     child: OverflowBox(
    //   maxWidth: MediaQuery.of(context).size.width,
    //   child: ListView.builder(
    //       itemCount: (productData.length.toDouble() / 2).toInt(),
    //       itemBuilder: (_, i) {
    //         int a = 2 * i;
    //         int b = 2 * i + 1;
    //         return Row(
    //           children: <Widget>[
    //             Container(
    //               height: 200,
    //               width: (MediaQuery.of(context).size.width - 90) / 2,
    //               margin: const EdgeInsets.only(left: 10, bottom: 30),
    //               padding: const EdgeInsets.only(bottom: 12),
    //               decoration: BoxDecoration(
    //                   color: Colors.white,
    //                   borderRadius: BorderRadius.circular(17),
    //                   image: DecorationImage(
    //                       image: AssetImage(productData[a]['img'])),
    //                   boxShadow: [
    //                     BoxShadow(
    //                         blurRadius: 3,
    //                         offset: const Offset(3, 3),
    //                         color: Colors.black.withOpacity(0.1)),
    //                     BoxShadow(
    //                         blurRadius: 3,
    //                         offset: const Offset(-3, -3),
    //                         color: Colors.black.withOpacity(0.1))
    //                   ]),
    //               child: Center(
    //                   child: Align(
    //                 alignment: Alignment.bottomLeft,
    //                 child: Text(
    //                   productData[a]['name'],
    //                   style: const TextStyle(fontSize: 20),
    //                 ),
    //               )),
    //             ),

    //             //second Flag
    //             Container(
    //               height: 200,
    //               width: (MediaQuery.of(context).size.width - 90) / 2,
    //               margin: const EdgeInsets.only(left: 20, bottom: 30),
    //               padding: const EdgeInsets.only(bottom: 10),
    //               decoration: BoxDecoration(
    //                   color: Colors.white,
    //                   borderRadius: BorderRadius.circular(17),
    //                   image: DecorationImage(
    //                       image: AssetImage(productData[b]['img'])),
    //                   boxShadow: [
    //                     BoxShadow(
    //                         blurRadius: 3,
    //                         offset: const Offset(5, 5),
    //                         color: Colors.red.withOpacity(0.1)),
    //                     BoxShadow(
    //                         blurRadius: 3,
    //                         offset: const Offset(-5, -5),
    //                         color: Colors.red.withOpacity(0.1))
    //                   ]),
    //               child: Center(
    //                   child: Align(
    //                 alignment: Alignment.bottomCenter,
    //                 child: Text(
    //                   productData[b]['name'],
    //                   style: const TextStyle(fontSize: 20),
    //                 ),
    //               )),
    //             ),
    //           ],
    //         );
    //       }),
    // ));
  }
}
