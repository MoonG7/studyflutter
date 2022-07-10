import 'package:flutter/material.dart';

class SnackBarTest extends StatelessWidget {
  const SnackBarTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (BuildContext ctx) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(ctx)
                        .showSnackBar(const SnackBar(content: Text('클릭')));
                  },
                  child: const Text('버튼 클릭'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}