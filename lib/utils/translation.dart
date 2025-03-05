import 'package:get/get_navigation/src/root/internacionalization.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'welcome': 'Welcome',
      'select_language': 'Select Language',
      'second_page': 'Second Page',
      'hello_text': 'Hello, how are you?',
    },
    'hi_IN': {
      'welcome': 'स्वागत है',
      'select_language': 'भाषा चुनें',
      'second_page': 'दूसरा पृष्ठ',
      'hello_text': 'नमस्ते, आप कैसे हैं?',
    },
    'mr_IN': {
      'welcome': 'स्वागत आहे',
      'select_language': 'भाषा निवडा',
      'second_page': 'दुसरे पृष्ठ',
      'hello_text': 'नमस्कार, तुम्ही कसे आहात?',
    },
    'ar_SA': {
      'welcome': 'أهلا بك',
      'select_language': 'اختر اللغة',
      'second_page': 'الصفحة الثانية',
      'hello_text': 'مرحبا، كيف حالك؟',
    },
  };
}