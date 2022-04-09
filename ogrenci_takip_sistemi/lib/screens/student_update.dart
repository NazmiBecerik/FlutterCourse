// ignore_for_file: use_key_in_widget_constructors, no_logic_in_create_state, prefer_const_constructors
import 'package:flutter/material.dart';

class StudentUpdate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StudentUpdateState();
  }
}

class _StudentUpdateState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Öğrenci Güncelle")),
      body: Center(
        child: Text("Öğrenci Güncelleme Formu Burada Olacak"),
      ),
    );
  }
}
