// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(BenimUygulamam());
// }

// class BenimUygulamam extends StatelessWidget {
//   const BenimUygulamam({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SafeArea(
//           child: Scaffold(
//         backgroundColor: Colors.black,
//         body: Column(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Container(
//               color: Colors.white,
//               height: 100,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Container(
//                   color: Colors.redAccent,
//                   height: 100,
//                   width: 100,
//                 ),
//                 Container(
//                   color: Colors.yellow,
//                   height: 100,
//                   width: 100,
//                 )
//               ],
//             ),
//             Container(
//               color: Colors.blue,
//               height: 100,
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }

void main(List<String> args) {
  runApp(BenimUygulamam2());
}

class BenimUygulamam2 extends StatelessWidget {
  const BenimUygulamam2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Colors.white,
                width: 100,
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 100,
                    width: 100,
                  )
                ],
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
