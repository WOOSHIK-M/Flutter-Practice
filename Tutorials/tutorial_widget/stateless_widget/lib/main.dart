/*
Ignore lint error

(Entire file scrpit) ignore_for_file: prefer_const_constructors
(A line) ignore: prefer_const_constructors
*/

import 'package:flutter/material.dart'; // according to meterial design

// ignore_for_file: prefer_const_constructors
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // 하나의 위젯을 parmeter로 전달 받음
  // 앱을 구성하는 시작점
  // 위젯 트리의 최상단에 위치함
  @override
  Widget build(BuildContext context) {
    // 위젯은 기본적으로 build 함수를 가지고 있음
    // build함수는 또 다른 위젯을 반환
    return MaterialApp(
      home: HomeWidget(),
      // home이라는 named parameter
      // 앱이 실행되고 처음으로 표시되는 화면
      // 전달된 위젯이 첫 화면에 표시되게 됨
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // flutter/material.dart가 제공하는 Scaffold라는 위젯
      // 가장 기본단위의 위젯이며 AppBar, body등으로 같이 화면 구성을 쉽게 할 수 있음
      appBar: AppBar(
        title: Text('Stateless Widget'),
      ),
      // Appbar: 앱 상단바
      body: Center(
        child: Text('Hello world'),
      ),
      // Center라는 위젯을 통해 자식 위젯을 화면 가운데로 정렬
      // Text 위젯을 통해 글자 표시
    );
  }
}
