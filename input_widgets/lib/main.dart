// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(TextFieldIslemleri());
}

class TextFieldIslemleri extends StatefulWidget {
  const TextFieldIslemleri({Key? key}) : super(key: key);

  @override
  State<TextFieldIslemleri> createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field Projesi"),
      ),
    );
  }
}
