import 'package:flutter/material.dart';
import 'package:module_10_flutter_06/Home_Screen.dart';

void main(){
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
