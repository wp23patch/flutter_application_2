import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _Myconter = 0;

  void _incrementCount() {
    setState(() {
      _Myconter++; //เพิ่มค่าทีละ 1
    });
  }

  void _decrementCount() {
    if (_Myconter > 0) {
      setState(() {
        _Myconter--; // ลดค่าทีละ 1
      });
    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text ("incrementCount and decrement Counter"),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text("นับไปแล้ว $_Myconter ครั้ง",
                style: TextStyle(fontSize: 20, color: Colors.red[400])),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [



              ElevatedButton(
                onPressed: _decrementCount, //Void _de
                child: Text(
                  "นับ -",
                  style: TextStyle(fontSize: 20, color: Colors.yellow[400]),
                ),
              ),


              ElevatedButton(
                onPressed: _incrementCount, //void _in
                child: Text(
                  "นับ +",
                  style: TextStyle(fontSize: 20, color: Colors.green[400]),
                ),
              ),
            ]),
          ])),
    );
  }
}