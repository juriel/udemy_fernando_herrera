import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Curso Udemy"),
          elevation: 5.0,
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Fila 1 "),
            Text("Número de Clicks "),
            Text("Hola Mundo "),
          ],
        )));
  }
}
