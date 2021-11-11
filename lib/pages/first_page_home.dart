import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'first_page.dart';

class FirstPageHome extends StatefulWidget {
  const FirstPageHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FirstPageHome> createState() => FirstPage();
}