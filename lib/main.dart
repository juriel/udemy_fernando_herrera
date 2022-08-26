import 'package:flutter/material.dart';
import 'package:udemy_fernando_herrera/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const HomePage(),
    );
  }
}

