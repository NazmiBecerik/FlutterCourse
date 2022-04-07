//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_base_widgets/image_widgets.dart';
import 'package:flutter_base_widgets/my_counter_page.dart';

void main(List<String> args) {
  debugPrint("Main çalıştı");
  runApp(MyApp());
}

//stle kısaltması ile stateles wdgt oluşturulabilir.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("My App build çalıştı");
    return MaterialApp(
        title: "My Counter App",
        theme: ThemeData(
            primarySwatch: Colors.teal,
            textTheme: TextTheme(
                headline2: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold))),
        home: Scaffold(
          appBar: AppBar(
            title: Text("İmage Örnekleri"),
          ),
          body: ImageOrnekleri(),
        ));
  }
}





// Notlar ---------
// Stateles widgetlarda build bir kere çalışır program ana hatları ile ekrana yazılır . Sonra ki etkileşimlerden ana hatlar etkilenmez.