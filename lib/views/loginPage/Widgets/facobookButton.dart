import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/core/constants/imagesConstants.dart';

class FaceBookLoginButton extends StatelessWidget {
  const FaceBookLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: RawMaterialButton(
        fillColor: Colors.white,
        hoverColor: AppColors.zircon,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppColors.zircon,
            width: 1.5,
          ), // الإطار الأسود
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
}
