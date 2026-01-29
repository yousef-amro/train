import 'package:flutter/material.dart';
import 'package:train/core/localization/localization.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/core/constants/imagesConstants.dart';

class IntroHeaderComponent extends StatefulWidget {
  const IntroHeaderComponent({super.key});

  @override
  State<IntroHeaderComponent> createState() =>
      _IntroHeaderComponentState();
}

class _IntroHeaderComponentState extends State<IntroHeaderComponent> {
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
          'Let’s Get Started',
          style: TextStyle(
            color: Color(0xff223263),
            fontWeight: FontWeight.w900,
            fontSize: 21,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          style: TextStyle(fontSize: 16, color: AppColors.baliHai),
          'Create an new account',
        ),
      ],
    );
  }
}
