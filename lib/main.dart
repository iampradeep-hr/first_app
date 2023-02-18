import 'package:flutter/material.dart';
import 'package:first_app/widgets/list_grid.dart';
import 'package:first_app/widgets/dismissible.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/animated_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber,
      ),
      home: AnimatedText(),
    );
  }
}
