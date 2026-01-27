import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train/core/constants/appColorsConstants.dart';

class SearchBarComponent extends StatefulWidget {
  const SearchBarComponent({super.key});

  @override
  State<SearchBarComponent> createState() =>
      _SearchBarComponentState();
}

class _SearchBarComponentState extends State<SearchBarComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const SizedBox(width: 12),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search Product",
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: AppColors.blue,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 205, 211, 228),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 205, 211, 228),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    print("yoyo");
                  },
                  child: Icon(
                    CupertinoIcons.suit_heart,
                    color: Color(0xff9098B1),
                    size: 33,
                  ),
                ),
                SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    print("yoyo");
                  },
                  child: Icon(
                    CupertinoIcons.bell,
                    color: Color(0xff9098B1),
                    size: 33,
                  ),
                ),
              ],
            ),
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
