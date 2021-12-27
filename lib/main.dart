import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab/pages/first_page_home.dart';

void main() {
  runApp(const Main());
}


class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hvostova',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        backgroundColor: Colors.orange,
      ),
      home: const FirstPageHome(title: 'Hvostova'),
    );
  }
}