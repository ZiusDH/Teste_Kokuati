import 'package:flutter/material.dart';
import 'dart:async';
import 'package:teste_kokuati/pages/form.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Formulario(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Color(0xFFF2FFF4),
          ),
          SizedBox(
            width: 256,
            height: 256,
            child: Image.asset("assets/simbolo.png"),
          ),
        ],
      )),
    );
  }
}
