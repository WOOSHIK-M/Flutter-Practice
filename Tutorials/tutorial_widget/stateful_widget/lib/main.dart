/*
Ignore lint error

(Entire file scrpit) ignore_for_file: prefer_const_constructors
(A line) ignore: prefer_const_constructors
*/

// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // StatelessWidget 상속
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
  // StatelessWidget의 build를 사용하지 않고 createState를 사용해야 함
  // State라는 클래스를 상속받은 Custom State를 상속받아야 함
  // Custom State는 변경 가능한 상태를 가지고 있으며, 변경되는 상태에 따른 위젯을 가지고 있음
}

class _HomeWidgetState extends State<HomeWidget> {
  int counter = 0;
  // State에 저장할 변수 선언
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateful Widget')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => setState(() => {counter++}),
                child: Icon(Icons.add)),
            Container(
              child: Text('$counter'),
              // counter 표시
              margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            ),
            ElevatedButton(
                onPressed: () => setState(() => {counter--}),
                child: Icon(Icons.remove)),
          ],
        ),
      ),
    );
  }
}
