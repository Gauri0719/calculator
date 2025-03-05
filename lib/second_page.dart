import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('second_page'.tr)),
      body: Center(
        child: Text('hello_text'.tr, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}