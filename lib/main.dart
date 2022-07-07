import 'package:flutter/material.dart';
import 'myCard.dart';
import 'snackBarTest.dart';
import 'tostTest.dart';
import 'containerTest.dart';
import 'navigatorTest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'studyFlutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FirstPage(),
    );
  }
}


