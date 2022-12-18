import 'dart:io';
import "package:teste_kokuati/pages/video.dart";

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  TextEditingController txtcep = new TextEditingController();
  String resultado = "Automático";

  _consultaCep() async {
    String cep = txtcep.text;

    String url = "https://viacep.com.br/ws/${cep}/json/";

    //http.Response = resposta;
    http.Response response;
    response = await http.get(url);

    Map<String, dynamic> retorno = jsonDecode(response.body);

    String logradouro = retorno["logradouro"];
    String bairro = retorno["bairro"];
    String cidade = retorno["localidade"];

    setState(() {
      resultado = "$logradouro, $bairro, $cidade";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
          left: 25,
          right: 25,
        ),
        color: Color(0xFFF2FFF4),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CADASTRO",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  //fontFamily: inter,
                ),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onEditingComplete: _consultaCep,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Cep",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              controller: txtcep,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Endereço: $resultado"),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => video(),
                        ));
                  },
                  child: SizedBox.expand(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ENVIAR",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
