import 'package:flutter/material.dart';
import 'package:teste_kokuati/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //primarySwatch: Color.fromARGB(0, 190, 69, 69),
          ),
      home: HomePage(),
    );
  }
}
