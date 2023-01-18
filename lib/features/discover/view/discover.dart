import 'package:flutter/material.dart';

import '../../../components/appbar.dart';
import '../../../components/listview.dart';
import '../../../components/search_field.dart';
import '../../../utils/style/text_style.dart';

class DiscoverScreen extends StatelessWidget {
  List<String> category;
  DiscoverScreen({required this.category, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          searchField(
            hintText: "Search news ",
            settings: () {
              debugPrint("Search news");
            },
          ),
          const SizedBox(height: 30),
          Text(
            'My Categories',
            style: appbarTextStyle(Colors.black),
          ),
          const SizedBox(height: 30),
          horizontalListCategories(category: category),
        ],
      ),
    );
  }
}
