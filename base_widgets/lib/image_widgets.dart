import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imgUrl =
        "https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2Fyc3xlbnwwfHwwfHw%3D&w=1000&q=80";
    return Center(
      child: Column(
        children: [
          Container(
              width: 150,
              height: 150,
              color: Colors.red.shade300,
              child: Image.asset(
                "assets/images/car.jpg",
                fit: BoxFit.cover,
              )),
          Container(
              width: 150,
              height: 150,
              color: Colors.red.shade300,
              child: Image.network(
                imgUrl,
                fit: BoxFit.cover,
              )),
          Container(
              color: Colors.yellow,
              child: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
                child: Text("E"),
                radius: 50,
                backgroundColor: Colors.purple,
                foregroundColor: Colors.red,
              ))
        ],
      ),
    );
  }
}
