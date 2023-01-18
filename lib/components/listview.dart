import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../routes/routes_name.dart';
import '../utils/style/text_style.dart';

Widget horizontalListCategories({height, required List<String> category}) {
  return SizedBox(
    height: 130,
    child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: category!.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CardFb(
              text: 'News',
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.feed);
              },
              subtitle: category[index],
              icon: Icons.newspaper_outlined,
            ),
          ),
        );
      },
    ),
  );
}

class CardFb extends StatelessWidget {
  final String text;
  final IconData icon;
  final String subtitle;
  final Function() onPressed;

  const CardFb({
    required this.text,
    required this.icon,
    required this.subtitle,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 90,
        height: 150,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: CAppColors.primary.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.05)),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: CAppColors.primaryDark,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: iconTextStyle(CAppColors.text1),
            ),
          ],
        ),
      ),
    );
  }
}
