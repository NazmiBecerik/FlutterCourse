// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: Scaffold(
//         backgroundColor: Color(0xFFD7E0FF),
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Text("Mutlu Bayramlar"),
//         ),
//         body: Center(child: Image.asset("images/mutlu_bayramlar.jpg"))),
//   ));
// }

// Ödev Favori Film Uygulaması
void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Favori Filmim"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: Image.asset(
            "images/movies-bane-batman-the-dark-knight-rises-wallpaper-preview.jpg"),
      ),
    ),
  ));
}
