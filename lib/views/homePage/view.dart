import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/homePage/components/search_bar_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [SearchBarComponent()]),
    );
  }
}
