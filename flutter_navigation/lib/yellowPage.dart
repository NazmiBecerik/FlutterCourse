import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(title: Text("Red Page")),
      // ignore: prefer_const_constructors
      body: Center(
          // ignore: prefer_const_constructors
          child: Text(
        "Yellow Page",
        style: TextStyle(fontSize: 24),
      )),
      backgroundColor: Colors.yellow,
    );
  }
}
