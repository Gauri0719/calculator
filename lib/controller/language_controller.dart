// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class LanguageController extends GetxController {
// final _selectedLanguage = 'en_US'.obs;
//
// String get currentLanguage => _selectedLanguage.value;
//
//
// @override
//   void onInit(){
//   super.onInit();
//   loadSavedLanguage();
// }
// Future<void>loadSavedLanguage() async {
//   final prefs = await SharedPreferences.getInstance();
//   final savedLanguage=prefs.getString('language') ?? 'en_US';
//   changeLanguage(savedLanguage);
// }
// void changeLanguage(String languageCode)async{
//   _selectedLanguage
// }
// }
