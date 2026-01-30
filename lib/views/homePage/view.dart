import 'package:flutter/material.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/homePage/components/search_bar_component.dart';
import 'package:train/views/homePage/widgets/category.dart';
import 'package:train/views/homePage/widgets/mega_sale.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
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
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,

            currentIndex: currentIndex,
            selectedItemColor: AppColors.blue,
            unselectedItemColor: AppColors.baliHai,
            backgroundColor: AppColors.white,
            showUnselectedLabels: true,
            onTap: (int value) {
              setState(() {
                currentIndex = value;
                print(currentIndex);
              });
            },

            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home_outlined),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.lens),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.nest_cam_wired_stand_rounded),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_offer),
                label: "Offer",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Account",
              ),
            ],
          ),
          Container(
            color: Color.fromARGB(255, 205, 211, 228),
            height: 1.5,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
