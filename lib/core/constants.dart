import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class AppColors {
  static Color cello = Color(0xFF9098B1);
  static Color dodgerBlue = Color(0xff40BFFF);
  static Color baliHai = Color(0xFF9098B1);
  static Color zircon = Color(0xFFEBF0FF);
}

class Validates {
  static String name = r'^[a-zA-Z0-9._-\s]{3,20}$';
  static String email =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+$";
}

class Images {
  static String logo = "image/logo.png";
  static String logo2 = "image/logo2.png";
  static String googlelogo = 'image/Google.png';
  static String facebooklogo = 'image/Facebook.png';
}
