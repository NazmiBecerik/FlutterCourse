import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({Key? key}) : super(key: key);

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
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
          MyNewTextWidget(),
          Text(
            sayac.toString(),
            style: Theme.of(context).textTheme.headline2,
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

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Butona basılma miktarı',
      style: TextStyle(fontSize: 24),
    );
  }
}
