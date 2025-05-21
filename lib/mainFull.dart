import 'package:flutter/material.dart';
import 'package:flutterpractice/components/Icon.dart';
import 'package:flutterpractice/components/Image.dart';
import 'package:flutterpractice/components/Typography.dart';
import 'package:flutterpractice/components/textField.dart';
import 'package:flutterpractice/layouts/column.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Mi super app"),
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.movie_filter_outlined)),
        ],
      ),
      backgroundColor: Colors.cyanAccent,
      body: Tipografias(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.push_pin),
      ),
    ));
  }
}
