import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) { //跑起來時就會build我們的內容出來
    return Container( //回傳一個container
      color: Colors.amber,
      child: Center( //用center把文字內容包起來
        child: Text(
          "Hello World",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 50.0, color: Colors.green, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}