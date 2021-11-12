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
      body: Container(
        padding: const EdgeInsets.only(left: 30, top: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text('Hello, Arya!',style: TextStyle(
              fontSize: 25,
              color: Colors.pink
              ),
            ),
            Expanded(child: Container()),
            // Container(
            //   decoration: const BoxDecoration(
            //    image: DecorationImage(
            //       image: ExactAssetImage('assets/image/pm.jpg'),
            //       fit: BoxFit.fill,
            //       alignment: Alignment.bottomLeft,
            //     ),
            //   ),
            // )
          ],
        ),
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
