import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Click Me",
              style: TextStyle(color: Colors.black),
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                elevation: MaterialStateProperty.all(20),
                overlayColor: MaterialStateProperty.all(Colors.pinkAccent),
                backgroundColor:
                    MaterialStateProperty.all(Colors.amber.shade700)),
          ),
          Center(
            child: ElevatedButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.indigo)),
                onPressed: () {},
                child: Text(
                  "Press Me",
                  style: TextStyle(fontSize: 25),
                )),
          )
        ],
      ),
    );
  }
}
