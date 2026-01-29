import 'package:flutter/material.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/core/localization/localization.dart';
import 'package:train/core/constants/imagesConstants.dart';
import 'package:easy_localization/easy_localization.dart';

class IntroHeaderComponent extends StatefulWidget {
  const IntroHeaderComponent({super.key});

  @override
  State<IntroHeaderComponent> createState() => _IntroHeaderState();
}

class _IntroHeaderState extends State<IntroHeaderComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  AppLocalizationsHelper.changeLanguage(context);
                });
              },
              child: Text('trans'),
            ),
          ],
        ),
        Image.asset(Assets.logo2, height: 72, width: 72),
        const SizedBox(height: 15),
        Text(
          'welcome'.tr(),
          style: TextStyle(
            color: AppColors.baliHai,
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          style: TextStyle(fontSize: 16, color: AppColors.baliHai),
          'singInMessage'.tr(),
        ),
      ],
    );
  }
}
