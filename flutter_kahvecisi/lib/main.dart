// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(FlutterKahvecisi());
}

class FlutterKahvecisi extends StatelessWidget {
  const FlutterKahvecisi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Sacramento'),
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/kahve.jpg"),
                radius: 90.0,
                backgroundColor: Colors.lime,
              ),
              Text(
                "Flutter Kahvecisi",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.brown[900],
                ),
              ),
              Text(
                "Bir Fincan Uzağınızda",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                padding: EdgeInsets.all(10),
                color: Colors.brown,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.mail,
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "flutterkahvecisi@gmail.com",
                      style: TextStyle(fontSize: 35),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.brown,
                margin: EdgeInsets.only(left: 50, right: 50),
                padding: EdgeInsets.all(10),
                child: Row(children: <Widget>[
                  Icon(
                    Icons.phone,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "5076329771",
                    style: TextStyle(fontSize: 35),
                  )
                ]),
              )
            ],
          ),
        )),
      ),
    );
  }
}
