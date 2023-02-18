import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
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
      appBar: AppBar(title: Text("Dismissible")),
      body: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index) {
            final car = cars[index];
            return Dismissible(
                key: Key(car),
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(cars[index]),
                          backgroundColor: Colors.greenAccent),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(cars[index]),
                          backgroundColor: Colors.redAccent),
                    );
                  }
                },
                background: Container(color: Colors.redAccent),
                secondaryBackground: Container(color: Colors.greenAccent),
                child: Card(
                  child: ListTile(
                    title: Text(cars[index]),
                  ),
                ));
          }),
    );
  }
}
