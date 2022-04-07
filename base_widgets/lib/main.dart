//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main(List<String> args) {
  debugPrint("Main çalıştı");
  runApp(MyApp());
}

//stle kısaltması ile stateles wdgt oluşturulabilir.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// Home bizden bir stateless wdgt istiyor.
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int sayac = 0;

// build içerisine yazılanlar anında ekrana çizilir ve değişmez.
  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePage build çalıştı");
    // scaffold uygulamamızın iskeletini bize verir. o sebeple scaffol tanımlarız.
    return Scaffold(
      appBar: AppBar(title: Text("My Counter AppBar")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Butona basılma miktarı',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            sayac.toString(),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayaciArttir();
          debugPrint("Butona tıklandı sayac degeri $sayac");
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {
      sayac++;
    });
  }
}



// Notlar ---------
// Stateles widgetlarda build bir kere çalışır program ana hatları ile ekrana yazılır . Sonra ki etkileşimlerden ana hatlar etkilenmez.