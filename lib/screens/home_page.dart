import 'package:flutter/material.dart';
//import 'package:provider';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final superheroes = ["Superman", "Batman", "Spiderman", "Acuaman"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Curso Udemy"),
          elevation: 5.0,
        ),
        body: Center(
            child: ListView.builder(
                itemCount: superheroes.length,
                itemBuilder: (_, index) =>
                    ListTile(title: Text(superheroes[index])))));
  }
}
