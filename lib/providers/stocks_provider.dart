import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StockProvider extends ChangeNotifier {
  List<String> stocks = ["PERRO", "GATO"];
  StockProvider() {
    print("StockProvider");
    getOnLoadStocks();
  }
  getOnLoadStocks() async {
    var strUrl = "https://bvcbot.zetaindex.com/stock-list.php";
    var url = Uri.parse(strUrl);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      String body = response.body;
      List<dynamic> decoded = json.decode(body);
      List<String> newStocks = [];
      for (var i = 0; i < decoded.length; i++) {
        print(decoded[i]["stock"]);
        newStocks.add(decoded[i]["stock"]);
      }
      this.stocks = newStocks;
      notifyListeners();
      print("------------------------");
    }
  }
}
