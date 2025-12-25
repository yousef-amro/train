import 'package:flutter/material.dart';
import 'package:train/views/loginPage/widgets/facobook_Button.dart';
import 'package:train/views/loginPage/widgets/google_Button.dart';

class SocialMediaComponent extends StatefulWidget {
  const SocialMediaComponent({super.key});

  @override
  State<SocialMediaComponent> createState() =>
      _SocialMediaComponentState();
}

class _SocialMediaComponentState extends State<SocialMediaComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GoogleLoginButton(),

        const SizedBox(height: 10),

        FaceBookLoginButton(),
      ],
    );
  }
}
