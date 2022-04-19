import 'package:flutter/material.dart';
import 'package:layout_master/deep_tree.dart';
import 'package:layout_master/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DeepTree(),
    );
  }
}
