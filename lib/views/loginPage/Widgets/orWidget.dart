import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:train/core/constants.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 15),
        Expanded(
          child: Container(
            color: AppColors.zircon,
            height: 2,
            width: double.infinity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Text(
            'or'.tr(),
            style: TextStyle(
              color: AppColors.baliHai,
              fontSize: 15,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: AppColors.zircon,
            height: 2,
            width: double.infinity,
          ),
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
