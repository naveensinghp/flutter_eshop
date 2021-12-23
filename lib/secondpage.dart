import 'package:flutter/material.dart';
import 'package:flutter_eshop/product.dart';

void main() => runApp(const ProductPage());

/// This is the main application widget.
class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  width: 350,
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
                          size:25
                        ),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.grey
                      
                      )
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
            const SizedBox(height: 90,),
            const ProductData()
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
