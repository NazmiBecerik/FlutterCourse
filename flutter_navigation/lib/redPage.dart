import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);
  int _rastgeleSayi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(
        title: Text("Red Page"),
        backgroundColor: Colors.red,
        automaticallyImplyLeading:
            false, // yukarıda geri dönme butonunun aktifliği
      ),
      // ignore: prefer_const_constructors
      body: Center(
          // ignore: prefer_const_constructors
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: prefer_const_constructors
          Text(
            "Red Page",
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
              onPressed: () {
                _rastgeleSayi = Random().nextInt(100);
                Navigator.of(context).pop(_rastgeleSayi);
              },
              child: Text("Geri Dön"))
        ],
      )),
    );
  }
}
