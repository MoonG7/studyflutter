import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TostTest extends StatelessWidget {
  const TostTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tostTest'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            flutterToast();
          },
          child: Text('토스트 띄우기'),
        ),
      ),
    );
  }
}

 void flutterToast(){
   Fluttertoast.showToast(msg: '토스트 테스트',
     gravity: ToastGravity.BOTTOM,
     backgroundColor: Colors.green,
     fontSize: 20.0,
     toastLength: Toast.LENGTH_SHORT
   );
 }
