import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:train/core/constants/appColorsConstants.dart';

class HaveAccountComponent extends StatefulWidget {
  const HaveAccountComponent({super.key});

  @override
  State<HaveAccountComponent> createState() =>
      _HaveAccountComponentState();
}

class _HaveAccountComponentState extends State<HaveAccountComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              'haveacc'.tr(),
              style: TextStyle(color: AppColors.baliHai),
            ),
            const SizedBox(width: 2.5),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Text(
                'singInButton'.tr(),
                style: TextStyle(
                  color: AppColors.dodgerBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
