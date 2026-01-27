import 'package:flutter/material.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:train/core/localization/translate_key.dart';
import 'package:train/views/registerPage/view.dart';

class NewAccountComponent extends StatefulWidget {
  const NewAccountComponent({super.key});

  @override
  State<NewAccountComponent> createState() =>
      _NewAccountComponentState();
}

class _NewAccountComponentState extends State<NewAccountComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              print('yoyo');
            });
          },
          child: Text(
            'forgotPassword'.tr(),
            style: TextStyle(
              color: AppColors.blue,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),

        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          child: Text(
            TranslateKey.clintAccount.tr(),
            style: TextStyle(
              color: AppColors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
