import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Hello")),
      body: Container(
        width: w,
        height: h,
        color: Colors.amber,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            width: 60,
            height: 60,
            color: Colors.red,
          ),
          Container(
            width: 60,
            height: 60,
            color: Colors.blue,
          ),
          Container(
            width: 60,
            height: 60,
            color: Colors.green,
          ),
          Container(
            width: 60,
            height: 60,
            color: Colors.purple,
          ),
          Container(
            width: 60,
            height: 60,
            color: Colors.pink,
          ),
        ]),
      ),
    );
  }
}
