import 'package:flutter/material.dart';
import 'package:train/views/homePage/components/search_bar_component.dart';
import 'package:train/views/homePage/widgets/category.dart';
import 'package:train/views/homePage/widgets/mega_sale.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: const [
          SearchBarComponent(),
          CategoriesSection(),
          FlashSaleSection(),
        ],
      ),
    );
  }
}
