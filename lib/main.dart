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
      body: HandControl(),
    ));
  }
}

class HomePage extends StatelessWidget { //放入文字
  @override
  Widget build(BuildContext context) {
    //↓↓↓更改此處程式碼↓↓↓
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //X軸對齊函數
      crossAxisAlignment: CrossAxisAlignment.center, //Y軸對齊函數
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

class ImagePage extends StatelessWidget { //插入圖片
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(child: Image.asset('assets/images/1.jpg')),
    );
  }
}

// ScrollPage
class ScrollPage extends StatelessWidget { //滾動頁面
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Upper component
        // ========================================================
        Expanded(
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child: Text("Upper component"),
          ),
          flex: 1,
        ),
        // ========================================================

        // SingleChildScrollView
        // ========================================================
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(20, (index) {
                return ElevatedButton(
                  child: Text("Button ${index + 1}"),
                  onPressed: () {
                    index = 2;
                    print(index);
                  },
                );
              }),
            ),
          ),
          flex: 1,
        ),
        // ========================================================

        // Lower component
        // ========================================================
        Expanded(
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child: Text("Lower component"),
          ),
          flex: 1,
        ),
        // ========================================================
      ],
    );
  }
}


class HandControl extends StatelessWidget {
  const HandControl({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: const Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}
