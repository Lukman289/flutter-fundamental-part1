import 'package:flutter/material.dart';

class MyInpudWidget extends StatelessWidget {
  const MyInpudWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      obscureText: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Nama',
          hintText: 'Enter your name'),
    );
  }
}
