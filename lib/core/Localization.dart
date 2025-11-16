import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class AppLocalizationsHelper {
  static void changeLanguage(BuildContext context) {
    if (context.locale == const Locale('en')) {
      context.setLocale(const Locale('ar'));
    } else {
      context.setLocale(const Locale('en'));
    }
  }
}
