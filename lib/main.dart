import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  // Widget build(BuildContext context) { //跑起來時就會build我們的內容出來
  //   return Container( //回傳一個container
  //     color: Colors.amber,
  //     child: Center( //child設定一個子元件，用center把文字內容包起來
  //       child: Text(
  //         "Hello World",
  //         textDirection: TextDirection.ltr,
  //         style: TextStyle(fontSize: 50.0, color: Colors.green, fontStyle: FontStyle.italic),
  //       ),
  //     ),
  //   );

  Widget build(BuildContext context) {
  return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HKT線上教室'),
        ),
        body: HomePage(),
      ));
}
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //↓↓↓更改此處程式碼↓↓↓
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //對齊函數
      crossAxisAlignment: CrossAxisAlignment.center, //對齊函數
      children: <Widget>[
        Container(
          color: Colors.amber,
          child: Text('1', style: TextStyle(fontSize: 100)),
        ),
        Container(
          color: Colors.red,
          child: Text('2', style: TextStyle(fontSize: 100)),
        ),
        Container(
          color: Colors.green,
          child: Text('3', style: TextStyle(fontSize: 100)),
        )
      ],
    );
  }
}


