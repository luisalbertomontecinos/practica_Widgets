import 'package:flutter/material.dart';
import 'package:laboratorio/MainScreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "wigget app",
      theme: ThemeData(colorScheme: ColorScheme.fromSeed
      (seedColor: Colors.blue )),
      home: MainScreen(),

    );
  }
}