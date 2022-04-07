import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldKullanimi extends StatefulWidget {
  const TextFormFieldKullanimi({Key? key}) : super(key: key);

  @override
  State<TextFormFieldKullanimi> createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  String _email = "", _password = "", _username = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Form Uygulaması")),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      initialValue: '',
                      decoration: InputDecoration(
                        // errorStyle: TextStyle(color: Colors.orange),
                        border: OutlineInputBorder(),
                        labelText: "Username",
                        hintText: "Username",
                      ),
                      onSaved: (deger) {
                        _username = deger!;
                      },
                      validator: (deger) {
                        if (deger!.length < 4) {
                          return "Username en az 4 karakterden oluşmalı";
                        } else
                          return null;
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      initialValue: '',
                      decoration: InputDecoration(
                        // errorStyle: TextStyle(color: Colors.orange),
                        border: OutlineInputBorder(),
                        labelText: "Email",
                        hintText: "Email",
                      ),
                      onSaved: (deger) {
                        _email = deger!;
                      },
                      validator: (deger) {
                        if (!EmailValidator.validate(deger!)) {
                          return "Gerçek bir mail giriniz";
                        } else
                          return null;
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    initialValue: '',
                    decoration: InputDecoration(
                      // errorStyle: TextStyle(color: Colors.orange),
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: "Password",
                    ),
                    onSaved: (deger) {
                      _password = deger!;
                    },
                    validator: (deger) {
                      if (deger!.length < 8) {
                        return "Password en az 8 karakter olmalı";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        bool validate = _formKey.currentState!.validate();
                        if (validate) {
                          _formKey.currentState!.save();
                          String result =
                              " Kullanıcı Adı:$_username \n Mail:$_email \n Şifre:$_password ";
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(result)));
                        }
                      },
                      child: Text("Onayla"))
                ],
              ),
            ),
          ),
        ));
  }
}
