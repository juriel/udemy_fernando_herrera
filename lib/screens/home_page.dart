import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_fernando_herrera/providers/stocks_provider.dart';
//import 'package:provider';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  //final superheroes = ["Superman", "Batman", "Spiderman", "Acuaman"];
  @override
  Widget build(BuildContext context) {
    StockProvider sp = context.watch<StockProvider>();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Curso Udemy"),
          elevation: 5.0,
        ),
        body: Center(
            child: ListView.builder(
                itemCount: sp.stocks.length,
                itemBuilder: (_, index) =>
                    ListTile(title: Text(sp.stocks[index])))));
  }
}
