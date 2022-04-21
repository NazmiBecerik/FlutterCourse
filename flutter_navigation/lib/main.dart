// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/greenPage.dart';
import 'package:flutter_navigation/redPage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Anasayfa());
  }
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Navigation Örnekleri")),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  int? _gelenSayi = await Navigator.push<int>(context,
                      CupertinoPageRoute(builder: (redContext) => RedPage()));
                  print('Ana sayfada ki sayi $_gelenSayi');
                },
                child: Text("Kırmızı Sayfaya Geçmek İçin Tıklayınız IOS"),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (redContext) => RedPage()));
                },
                child: Text("Kırmızı Sayfaya Geçmek İçin Tıklayınız Android"),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () async {
                    int? _geliyorSayi = await Navigator.push<int>(
                        context,
                        MaterialPageRoute(
                            builder: (greenContext) => GreenPage()));
                    print("Gelen Sayi $_geliyorSayi");
                  },
                  child: Text("Yeşil sayfaya git ve sayı getir."))
            ],
          ),
        ));
  }
}
