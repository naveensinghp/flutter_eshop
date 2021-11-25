import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(const ProductPage());

/// This is the main application widget.
class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      color: Colors.green,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
List productData = [];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/product.json").then((value) => {
      productData = json.decode(value),
    });
  }


 @override
  void initState(){
    super.initState();
    _initData();
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Most Liked Page',
      style: optionStyle,
    ),
    Text(
      'Cart Page',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      body: Container(
        padding: const EdgeInsets.only(left: 30, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                const Text(
                  'Hellos, Aryas!',
                  style: TextStyle(fontSize: 18, color: Colors.pink),
                ),
                // const Text('EMpty goes'),
                Expanded(child: Container()),
                Container(
                  padding: const EdgeInsets.only(right: 30),
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: ExactAssetImage('assets/image/one.jpg'),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Choose Your',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black87,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  'mood for today!',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black87,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 370,
                  padding: const EdgeInsets.only(left: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: const TextField(
                    style: TextStyle(fontSize: 16,color: Colors.black),
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Padding(
                        padding: EdgeInsetsDirectional.only(end: 11.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size:20
                        ),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 15,color: Colors.grey)
                    ),
                  )
                )
              ],
            ),
            // Row(
            //   children: <Widget>[
            //    Container(
            //         height: 80,
            //         width: 200,
            //         decoration: const BoxDecoration(
            //           color: Colors.red
            //         ),
            //       ),
            //   ],
            // ),
            Expanded(child: OverflowBox(
              maxWidth: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: (productData.length.toDouble()/2).toInt(),
                itemBuilder: (_,i){
                  int a = 2 * i;
                  int b = 2 * i + 1;
                  return Row(
                    children: <Widget>[
                     Container(
                       height: 170,
                       width: (MediaQuery.of(context).size.width-90)/2,
                       margin: const EdgeInsets.only(left: 30,bottom: 30),
                       padding: const EdgeInsets.only(bottom: 10),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(17),
                         image: DecorationImage(
                            image: AssetImage(
                              productData[a]['img']
                            )
                         ),
                         boxShadow: [
                           BoxShadow (
                             blurRadius: 3,
                             offset: const Offset(3,3),
                             color: Colors.black.withOpacity(0.1)
                            ),
                            BoxShadow (
                             blurRadius: 3,
                             offset: const Offset(-3,-3),
                             color: Colors.black.withOpacity(0.1)
                            )
                         ]
                       ),
                       child: Center(
                         child: Align(
                           alignment: Alignment.bottomCenter,
                           child: Text(
                          productData[a]['name'],
                           style: const TextStyle(
                             fontSize: 20
                           ),
                        ),
                         )
                       ),
                     ),
                     //second Flag
                     Container(
                       height: 170,
                       width: (MediaQuery.of(context).size.width-90)/2,
                        margin: const EdgeInsets.only(left: 20,bottom: 30),
                       padding: const EdgeInsets.only(bottom: 10),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(17),
                         image: DecorationImage(
                            image: AssetImage(
                              productData[b]['img']
                            )
                         ),
                         boxShadow: [
                           BoxShadow (
                             blurRadius: 3,
                             offset: const Offset(5,5),
                             color: Colors.red.withOpacity(0.1)
                            ),
                            BoxShadow (
                             blurRadius: 3,
                             offset: const Offset(-5,-5),
                             color: Colors.red.withOpacity(0.1)
                            )
                         ]
                       ),
                       child: Center(
                         child: Align(
                           alignment: Alignment.bottomCenter,
                           child: Text(
                          productData[b]['name'],
                           style: const TextStyle(
                             fontSize: 20
                           ),
                        ),
                         )
                       ),
                     ),
                    ],
                  );
                }),
            )
            )
          ],
        ),
        //_middleSection
      ),
      bottomNavigationBar: SizedBox(
        height: 140,
        child: BottomNavigationBar(
          backgroundColor: Colors.black87,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                //color: Colors.grey,
                size: 35,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                //color: Colors.grey,
                size: 35,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                //color: Colors.grey,
                size: 35,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xff00e2e3),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
