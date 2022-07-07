import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'studyFlutter',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('studyFlutter'), //app bar tile 지정
        centerTitle: true,
        backgroundColor: Colors.yellow[100], //app bar 색상 지정
        elevation: 0.0, // 앱바 그림자 지우기
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Hi1',
            style: TextStyle(
              color: Colors.blue, //폰트 색상
              letterSpacing: 4.0, //폰트 간격
              fontSize: 30.0, // 폰트 사이즈
              fontWeight: FontWeight.bold // 폰트 크기
            )),
            SizedBox(  //텍스트 사이의 간격
              height: 20.0,
            ),
            Text('Hi2')
          ],
        ),
      )

    );
  }
}


