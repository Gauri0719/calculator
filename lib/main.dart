import 'package:azad_sir/calculator.dart';
import 'package:azad_sir/counter_app.dart';
import 'package:azad_sir/demo_page.dart';
import 'package:azad_sir/language.dart';
import 'package:azad_sir/popup_buttons.dart';
import 'package:azad_sir/todo_page.dart';
import 'package:azad_sir/utils/translation.dart';
import 'package:azad_sir/widget/language_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

import 'controller/todo_controller.dart';
void main() async {
  await GetStorage.init();
  Get.put(LanguageController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final TodoController todoController = Get.put(TodoController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppTranslations(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      home: LifelineCardScreen(),
    );
  }
}

