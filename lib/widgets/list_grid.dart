import 'package:flutter/material.dart';

class ListAndGrid extends StatelessWidget {
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
          title: const Text("hello"),
          backgroundColor: Colors.indigoAccent,
        ),
        body: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text(cars[index]),
                onTap: () {
                  final snackbar = SnackBar(
                    content: Text(cars[index]),
                    backgroundColor: Colors.greenAccent,
                    duration: Duration(milliseconds: 1000),
                    // padding: EdgeInsets.all(20),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    action: SnackBarAction(
                      label: "Undo",
                      onPressed: () {},
                      textColor: Colors.black,
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
              ),
            );
          },
        )

        //  ListView(
        //   children: const [
        //     Card(
        //       elevation: 30,
        //       child: ListTile(
        //         title: Text("Lebron James"),
        //         subtitle: Text("Basket Ball Player"),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Lebron James"),
        //         subtitle: Text("Basket Ball Player"),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Lebron James"),
        //         subtitle: Text("Basket Ball Player"),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Lebron James"),
        //         subtitle: Text("Basket Ball Player"),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Lebron James"),
        //         subtitle: Text("Basket Ball Player"),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Lebron James"),
        //         subtitle: Text("Basket Ball Player"),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Lebron James"),
        //         subtitle: Text("Basket Ball Player"),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Lebron James"),
        //         subtitle: Text("Basket Ball Player"),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Lebron James"),
        //         subtitle: Text("Basket Ball Player"),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Lebron James"),
        //         subtitle: Text("Basket Ball Player"),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Lebron James"),
        //         subtitle: Text("Basket Ball Player"),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Lebron James"),
        //         subtitle: Text("Basket Ball Player"),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Lebron James"),
        //         subtitle: Text("Basket Ball Player"),
        //       ),
        //     )
        //   ],
        // ),
        );
  }
}
