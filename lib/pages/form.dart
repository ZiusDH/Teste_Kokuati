import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Formulario extends StatelessWidget {
  const Formulario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(
          "CADASTRO",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
          ),
        ),
      ),*/
      body: Container(
        //text: Text("CADASTRO"),
        color: Color(0xFFF2FFF4),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "NOME",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
