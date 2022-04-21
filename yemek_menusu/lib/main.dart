// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(YemekMenu());
}

class YemekMenu extends StatelessWidget {
  const YemekMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "BUGÜN NE YESEM",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatelessWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: () {
                    print("Çorba butonu tıklandı");
                  },
                  child: Image.asset("assets/images/corba_1.jpg")),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                  onPressed: () {
                    print("Yemek butonu tıklandı");
                  },
                  child: Image.asset("assets/images/yemek_1.jpg")),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                  onPressed: () {
                    print("Tatlı butonu tıklandı");
                  },
                  child: Image.asset("assets/images/tatli_1.jpg")),
            ),
          ),
        ],
      ),
    );
  }
}
