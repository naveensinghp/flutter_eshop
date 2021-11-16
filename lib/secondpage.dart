import 'package:flutter/material.dart';

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
      backgroundColor: Colors.red,
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
                  width: 360,
                  decoration: BoxDecoration(
                     color: Colors.grey,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  // child: const TextField(
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(),
                  //     hintText: 'Search',
                  //   ),
                  // ),
                )
              ],
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
                color: Colors.grey,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                //color: Colors.grey,
              ),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.grey,
              ),
              label: 'Cart',
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
