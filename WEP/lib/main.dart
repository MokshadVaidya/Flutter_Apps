import 'package:flutter/material.dart';
import 'screens/myposts.dart';
// ignore_for_file:prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WEP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPostPage(),
    );
  }
}

