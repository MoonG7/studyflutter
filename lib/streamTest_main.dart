import 'package:flutter/material.dart';
import 'package:nao/basic/counterstremTest.dart';

void main() {
  runApp(const StreamTest());
}

class StreamTest extends StatelessWidget {
  const StreamTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Builder',
      home: Counter(),
    );
  }
}
