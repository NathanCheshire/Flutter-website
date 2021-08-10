import 'package:flutter/material.dart';
import 'package:flutter_website/views/home_view.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NathanCheshire',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
       debugShowCheckedModeBanner: false,
    );
  }
}