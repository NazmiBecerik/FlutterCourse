// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ogrenci_takip_sistemi/screens/student_add.dart';
import 'package:ogrenci_takip_sistemi/screens/student_update.dart';
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
  Student selectedStudent = new Student.withId(0, "", "", 0);

  List<Student> students = [new Student.withId(1, "Nazmi", "Becerik", 79)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Öğrenci Takip Uygulaması"),
        ),
        body: buildBody(context));
  }

  void mesajGoster(context, String mesaj) {
    var alert = AlertDialog(title: Text("İşlem sonucu"), content: Text(mesaj));
    showDialog(context: context, builder: (BuildContext context) => alert);
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
                        selectedStudent = students[index];
                      });
                    });
              })),
      Text("Seçili Öğrenci :" + selectedStudent.firstName!),
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StudentUpdate()));
                }),
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentAdd()));
                    }),
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
                onPressed: () {
                  setState(() {
                    students.remove(selectedStudent);
                  });
                  var mesaj = "Silindi : " + selectedStudent.firstName!;
                  mesajGoster(context, mesaj);
                }),
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
