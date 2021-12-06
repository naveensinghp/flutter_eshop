import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Icon(
        Icons.add,
        color: Colors.black87,
        size: 20.0,
      ),
      style: ElevatedButton.styleFrom(
        primary: const Color(0xff00e2e3),
        shape: const CircleBorder(),
        //padding: const EdgeInsets.all(10),
      ),
    );
  }
}
