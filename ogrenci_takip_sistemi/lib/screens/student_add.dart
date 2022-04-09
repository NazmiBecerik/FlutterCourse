// ignore_for_file: use_key_in_widget_constructors, no_logic_in_create_state, prefer_const_constructors
import 'package:flutter/material.dart';

class StudentAdd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StudentAddState();
  }
}

class _StudentAddState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Yeni Öğrenci Ekle")),
      body: Center(
        child: Text("Öğrenci Ekleme Formu Burada Olacak"),
      ),
    );
  }
}
