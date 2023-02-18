import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  List<String> cars = [
    "Toyota Supra",
    "Skyline",
    "Mazda MX-5",
    "Nissan GT-R",
    "Honda Civic",
    "Subaru"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bottom Sheet Widget",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Click me"),
          onPressed: () {
            showModalBottomSheet(
                isDismissible: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                backgroundColor: Colors.green,
                elevation: 20,
                context: context,
                builder: (context) {
                  return Column(mainAxisSize: MainAxisSize.min, children: [
                    ListTile(title: Text(cars[0])),
                    ListTile(title: Text(cars[1])),
                    ListTile(title: Text(cars[2])),
                    ListTile(title: Text(cars[3])),
                  ]);
                });
          },
        ),
      ),
    );
  }
}
