import 'package:counter/changable_thing.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          leading: const Icon(
            Icons.menu_rounded,
            size: 35.0,
          ),
          title: const Text("Counter App"),
        ),
        body: ChangableThing(),
      ),
    );
  }
}
