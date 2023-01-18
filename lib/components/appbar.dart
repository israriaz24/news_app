import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../routes/routes_name.dart';
import '../utils/style/text_style.dart';

PreferredSizeWidget appbar({
  required BuildContext context,
  required String title,
}) =>
    AppBar(
      backgroundColor: CAppColors.background3,
      elevation: 0,
      title: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(right: 35),
          child: Text(
            title,
            style: appbarTextStyle(Colors.black),
          ),
        ),
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, RoutesName.discover);
        },
        icon: const Icon(
          Icons.menu_outlined,
          color: Colors.black,
        ),
      ),
    );
PreferredSizeWidget appbar1({
  required BuildContext context,
  required String title,
}) =>
    AppBar(
      backgroundColor: CAppColors.background3,
      elevation: 0,
      title: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Text(
            title,
            style: appbarTextStyle(Colors.black),
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            "My Feed",
            style: appbarTextStyle(Colors.black),
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, RoutesName.feed);
          },
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black,
          ),
        ),
      ],
    );
