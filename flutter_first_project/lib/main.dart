import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img1 =
      "https://www.kirkpazar.com/magaza/image/cache/catalog/3dler/among-yeni-kirmizi-550x550.webp";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Başlık"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(25),
            // color: Colors.red,
            child: Text(
              "Nazmi",
              style: TextStyle(fontSize: 100),
            ),
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                image: DecorationImage(
                    image: NetworkImage(_img1), fit: BoxFit.cover),
                border: Border.all(width: 4, color: Colors.purple)),
          ),
          // child: Container(
          //   // alignment: Alignment.center
          //   height: 200,
          //   width: 200,
          //   color: Colors.red,
          //   child: Container(
          //     alignment: Alignment.center,
          //     margin: EdgeInsets.all(40),
          //     height: 50,
          //     width: 50,
          //     color: Colors.yellow,
          //     child: Text("Nazmii"),
          //   ),
          // ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tıklandı");
          },
          backgroundColor: Colors.white,
          child: Icon(
            Icons.account_circle,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
