import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:train/core/constants.dart';
import 'package:train/screens/register.dart';
import 'package:train/screens/login.dart';

class TextFields {
  //================== Login email ================-
  static TextFormField emailTextField = TextFormField(
    controller: emailController,

    keyboardType: TextInputType.emailAddress,

    validator: (value) {
      if (value!.isEmpty) {
        return 'emailMessage'.tr();
      }
      bool emailValid = RegExp(Validates.email).hasMatch(value);
      if (!emailValid) {
        return "Enter Valid Email";
      }
      return null;
    },
    decoration: InputDecoration(
      hintText: 'emailMessage'.tr(),
      hintStyle: TextStyle(color: AppColors.baliHai),

      prefixIcon: Icon(Icons.mail_outline, color: AppColors.baliHai),

      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(width: 2, color: AppColors.zircon),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(width: 2, color: AppColors.zircon),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(
          width: 2,
          color: AppColors.dodgerBlue,
        ), // لون عند الضغط
      ),
    ),
  );
  //-================== Register Email ================-

  static TextFormField registerEmail = TextFormField(
    controller: regEmailController, // ✅ هنا ضفنا الكنترولر

    keyboardType: TextInputType.emailAddress,

    validator: (value) {
      if (value!.isEmpty) {
        return 'emailMessage'.tr();
      }
      bool emailValid = RegExp(Validates.email).hasMatch(value);
      if (!emailValid) {
        return "Enter Valid Email";
      }
      return null;
    },
    decoration: InputDecoration(
      hintText: 'emailMessage'.tr(),
      hintStyle: TextStyle(color: AppColors.baliHai),

      prefixIcon: Icon(Icons.mail_outline, color: AppColors.baliHai),

      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      border: OutlineInputBorder(
        borderRadius:
            BorderRadius.zero, // مستطيل تمامًا بدون زوايا دائرية
        borderSide: BorderSide(width: 2, color: AppColors.zircon),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(width: 2, color: AppColors.zircon),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(
          width: 2,
          color: AppColors.dodgerBlue,
        ), // لون عند الضغط
      ),
    ),
  );
  //================== Register name ================-
  static TextFormField registerName = TextFormField(
    controller: nameController, // ✅ هنا ضفنا الكنترولر

    validator: (value) {
      if (value!.isEmpty) {
        return "nameMessage".tr();
      }
      bool nameValid = RegExp(Validates.name).hasMatch(value);
      if (!nameValid) {
        return "Enter Valid username";
      }
      return null;
    },
    decoration: InputDecoration(
      hintText: 'Full Name',
      hintStyle: TextStyle(color: AppColors.baliHai),

      prefixIcon: Icon(
        Icons.person_outline,
        color: AppColors.baliHai,
      ),

      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      border: OutlineInputBorder(
        borderRadius:
            BorderRadius.zero, // مستطيل تمامًا بدون زوايا دائرية
        borderSide: BorderSide(width: 2, color: AppColors.zircon),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(width: 2, color: AppColors.zircon),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(
          width: 2,
          color: AppColors.dodgerBlue,
        ), // لون عند الضغط
      ),
    ),
  );
  // ================== Google sing in buton ================
  static Padding GoogleSignIn = Padding(
    padding: const EdgeInsets.only(left: 12, right: 12),
    child: RawMaterialButton(
      fillColor: Colors.white,
      hoverColor: AppColors.zircon,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: AppColors.zircon,
          width: 1.5,
        ), // الإطار الأسود
        borderRadius: BorderRadius.circular(
          5,
        ), // لتدوير الزوايا (اختياري)
      ),
      elevation: 0,
      onPressed: () {},
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: Stack(
          alignment: Alignment.centerLeft,

          children: [
            Image.asset(
              Images.googlelogo,
              width: 50, // العرض
              height: 50, // الطول
            ),
            Center(
              child: Text(
                style: TextStyle(
                  color: AppColors.baliHai,
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                ),
                'googleLogin'.tr(),
              ),
            ),
          ],
        ),
      ),
    ),
  );
  // ================== Facebook sing in buton ================
  static Padding FacebookeSignIn = Padding(
    padding: const EdgeInsets.only(left: 12, right: 12),
    child: RawMaterialButton(
      fillColor: Colors.white,
      hoverColor: AppColors.zircon,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: AppColors.zircon,
          width: 1.5,
        ), // الإطار الأسود
        borderRadius: BorderRadius.circular(
          5,
        ), // لتدوير الزوايا (اختياري)
      ),
      elevation: 0,
      onPressed: () {},
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: Stack(
          alignment: Alignment.centerLeft,

          children: [
            Image.asset(
              Images.facebooklogo,
              width: 50, // العرض
              height: 50, // الطول
            ),
            Center(
              child: Text(
                style: TextStyle(
                  color: AppColors.baliHai,
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                ),
                'facebookLogin'.tr(),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
