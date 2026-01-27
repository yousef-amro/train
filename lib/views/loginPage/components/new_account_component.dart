import 'package:flutter/material.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:easy_localization/easy_localization.dart';
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
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              'donthaveacc'.tr(),
              style: TextStyle(color: AppColors.baliHai),
            ),
            const SizedBox(width: 2.5),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                });
              },
              child: Text(
                'Register'.tr(),
                style: TextStyle(
                  color: AppColors.blue,
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
