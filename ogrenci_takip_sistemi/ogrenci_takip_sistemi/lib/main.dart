// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

import 'models/Student.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String seciliOgrenci = "";

  List<Student> students = [new Student("Nazmi", "Becerik", 75)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Öğrenci Takip Uygulaması"),
        ),
        body: buildBody(context));
  }

  void mesajGoster(context, String mesaj) {
    var alert = AlertDialog(
      title: Text("Sınav Sonucu"),
      content: Text(mesaj),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
          child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://galeri14.uludagsozluk.com/884/keko-oturusu_1442959.jpg"),
                    ),
                    title: Text(students[index].firstName.toString() +
                        " " +
                        students[index].lastName.toString()),
                    subtitle: Text("Sınavdan aldığı not : " +
                        students[index].grade.toString()),
                    trailing: buildStatusIcon(students[index].grade),
                    onTap: () {
                      setState(() {
                        seciliOgrenci = (students[index].firstName.toString() +
                            " " +
                            students[index].lastName.toString());
                      });
                    });
              })),
      Text("Seçili Öğrenci : $seciliOgrenci"),
      Row(
        children: <Widget>[
          // Flexible uygulanan tüm alana kendisini yapıştırır.
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            // ignore: deprecated_member_use
            child: RaisedButton(
                color: Colors.yellow,
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(Icons.update),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("Güncelle"),
                  ],
                ),
                onPressed: () {}),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child:
                // ignore: deprecated_member_use
                RaisedButton(
                    color: Colors.green,
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.add),
                        SizedBox(
                          width: 1.0,
                        ),
                        Text("Yeni Öğrenci"),
                      ],
                    ),
                    onPressed: () {}),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            // ignore: deprecated_member_use
            child: RaisedButton(
                color: Colors.red,
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Sil"),
                  ],
                ),
                onPressed: () {}),
          )
        ],
      )
    ]);
  }

  Widget buildStatusIcon(int? grade) {
    if (grade! >= 50) {
      return Icon(Icons.done);
    } else if (grade >= 40) {
      return Icon(Icons.album);
    } else {
      return Icon(Icons.clear);
    }
  }
}
