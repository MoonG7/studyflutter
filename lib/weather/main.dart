import 'package:flutter/material.dart';
import 'package:nao/weather/screens/loading.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather app',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Loading(),
    );
  }
}
