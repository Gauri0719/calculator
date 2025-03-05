import 'dart:ui';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LanguageController extends GetxController {
  var selectedLang = 'en_US'.obs; // Observable variable

  void changeLanguage(String langCode, String countryCode) {
    var locale = Locale(langCode, countryCode);
    selectedLang.value = langCode; // Update selected language
    Get.updateLocale(locale); // Change app language dynamically
  }
}