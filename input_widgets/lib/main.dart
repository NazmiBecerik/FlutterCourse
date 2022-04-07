import 'package:flutter/material.dart';
import 'package:input_widgets/textFormField.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TextFormFieldKullanimi(),
    );
  }
}

class TextFieldIslemleri extends StatefulWidget {
  final String title;
  const TextFieldIslemleri({Key? key, required this.title}) : super(key: key);

  @override
  State<TextFieldIslemleri> createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  late TextEditingController emailController;
  late FocusNode _focusNode;
  int maxLineCount = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          maxLineCount = 3;
        } else {
          maxLineCount = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Column(children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                focusNode: _focusNode,
                controller: emailController,
                cursorColor: Colors.pink,
                autofocus: true,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                maxLines: maxLineCount,
                maxLength: 20,
                onChanged: (String deger) {
                  if (deger.length > 3) {
                    setState(() {
                      emailController.value = TextEditingValue(
                          text: deger,
                          selection:
                              TextSelection.collapsed(offset: deger.length));
                    });
                  }
                },
                decoration: InputDecoration(
                    labelText: "Mail",
                    hintText: "Email Giriniz",
                    filled: true,
                    // fillColor: Colors.red,
                    //icon: Icon(Icons.add),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)))),
                onSubmitted: (String deger) {
                  print("submit " + deger);
                },
              )),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(emailController.text),
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Şifre Giriniz",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                ),
              ))
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              emailController.text = "nazmibecerik@gmail.com";
            });
          },
          child: Icon(Icons.edit),
        ));
  }
}
