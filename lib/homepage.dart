import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();

  
}

class _MyHomePageState extends State<MyHomePage> {
 @override
  void initState() {
    super.initState();
 }
  @override
  Widget build(BuildContext context) {
    const color = Color(0xFF98d6ed);
    return Scaffold(
      backgroundColor: color,
      body: Container(
        padding: const EdgeInsets.all(100),
        child: ElevatedButton(
          child: const Text('showModalBottomSheet'),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                   height: 200,
                   color: Colors.amber,
                   child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                         children: <Widget>[
                           const Text('Modal BottomSheet'),
                           ElevatedButton(
                            child: const Text('Close BottomSheet'),
                            onPressed: () => Navigator.pop(context),
                          )
                         ]
                      )
                   ),
                );
              }
            );
          }
          ),
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
          image: ExactAssetImage('assets/image/one.jpg'),
          fit: BoxFit.cover,
          alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}