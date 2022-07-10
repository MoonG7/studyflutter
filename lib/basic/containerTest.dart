import 'package:flutter/material.dart';

class ContainerTest extends StatelessWidget {
  const ContainerTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              color: Colors.green,
              height: 100,
              width: 100,
              child: Text('ss'),
            )
          ],
        ),
      ),
    );
  }
}
