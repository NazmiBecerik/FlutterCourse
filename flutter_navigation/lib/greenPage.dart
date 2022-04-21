import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  GreenPage({Key? key}) : super(key: key);
  int _olusanSayi = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(
        title: Text("Green Page"),
        backgroundColor: Colors.green,
      ),
      // ignore: prefer_const_constructors
      body: Center(
          // ignore: prefer_const_constructors
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Green Page",
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(_olusanSayi);
              },
              child: Text("Sayıyı geri götür."))
        ],
      )),
      backgroundColor: Colors.green,
    );
  }
}
