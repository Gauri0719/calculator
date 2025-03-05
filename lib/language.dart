import 'package:azad_sir/second_page.dart';
import 'package:azad_sir/widget/language_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../controller/language_controller.dart'; // Import your controller

class LanguageSelectionScreen extends StatefulWidget {
  @override
  _LanguageSelectionScreenState createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  final langController = Get.find<LanguageController>(); // ✅ Correct Placement

  final List<Map<String, String>> languages = [
    {'name': 'English', 'flag': '🇺🇸', 'code': 'en', 'country': 'US'},
    {'name': 'Hindi', 'flag': '🇮🇳', 'code': 'hi', 'country': 'IN'},
    {'name': 'Marathi', 'flag': '🇮🇳', 'code': 'mr', 'country': 'IN'},
    {'name': 'Arabic', 'flag': '🇸🇦', 'code': 'ar', 'country': 'SA'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'.tr),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue.shade100, Colors.white],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Text('select_language'.tr,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  var lang = languages[index];
                  return GestureDetector(
                    onTap: () => langController.changeLanguage(lang['code']!, lang['country']!),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        leading: Text(lang['flag']!, style: TextStyle(fontSize: 24)),
                        title: Text(lang['name']!, style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  );
                },
              ),
            ),
              SizedBox(
                width: 200,
                height: 100,

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FloatingActionButton(
                  onPressed: () => Get.to(SecondPage()),
                  child:Row(
                    children: [
                      Text('Second Page'.tr,style: TextStyle(fontSize: 20),),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                              ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
