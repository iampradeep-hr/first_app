import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Widget"),
        backgroundColor: Colors.indigoAccent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey.shade700,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  margin: EdgeInsets.all(10),
                  // child: Image.asset("assets/images/skyline.jpg",
                  //     fit: BoxFit.fill),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(children: const [
                      CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage("assets/images/speed.jpg")),
                    ]),
                  ),
                )),
            const ListTile(
                leading: Icon(Icons.car_rental_sharp), title: Text("Rent")),
            const ListTile(
                leading: Icon(Icons.bluetooth_drive_sharp),
                title: Text("Drift")),
            const ListTile(
                leading: Icon(Icons.drive_eta), title: Text("Learn")),
          ],
        ),
      ),
      // backgroundColor: Colors.indigoAccent,
      body: Container(
        child: const Center(
            child: Text(
          "Home",
          style: TextStyle(fontSize: 25),
        )),
      ),
    );
  }
}
