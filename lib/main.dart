import 'package:azad_sir/calculator.dart';
import 'package:azad_sir/counter_app.dart';
import 'package:azad_sir/popup_buttons.dart';
import 'package:azad_sir/todo_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/todo_controller.dart';

void main() {
  Get.put(TodoController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final TodoController todoController = Get.put(TodoController());
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:TodoPage(),
    );
  }
}

