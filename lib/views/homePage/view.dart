import 'package:flutter/material.dart';
import 'package:standard_searchbar_v2/new/standard_search_anchor.dart';
import 'package:standard_searchbar_v2/new/standard_search_bar.dart';
import 'package:standard_searchbar_v2/new/standard_suggestions.dart';
import 'package:train/core/constants/appColorsConstants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: PreferredSize(
          preferredSize: const Size.fromHeight(1111),
          child: Padding(
            padding: EdgeInsets.only(top: 200, bottom: 200),
            child: StandardSearchAnchor(
              searchBar: StandardSearchBar(bgColor: AppColors.white),
              suggestions: StandardSuggestions(suggestions: []),
            ),
          ),
        ),
      ),
    );
  }
}
