import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Container & Sized Box")),
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.teal.shade200,
                boxShadow: const [
                  BoxShadow(blurRadius: 10, color: Colors.purpleAccent)],
                borderRadius:
                    const BorderRadius.only(topLeft: Radius.circular(30))),
            child: const Center(
                child: Text(
              "Hello!",
              style: TextStyle(fontSize: 25),
            )),
          ),
        ));
  }
}
