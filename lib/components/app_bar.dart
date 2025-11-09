import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/style.dart';

AppBar ApplicationAppBar(context,String title) {
  return AppBar(
    title: Text(title, style: AppBarHeader()),
    backgroundColor: primaryColor,
    leading: Builder(
      builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(CupertinoIcons.bars),
          color: colorWhite,
          iconSize: 40,
        );
      },
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(CupertinoIcons.search),
        color: colorWhite,
      ),
      Stack(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.cart),
            color: colorWhite,
          ),
          Positioned(
            right: 6,
            top: 6,
            child: Container(
              width: 17,
              height: 17,
              decoration: BoxDecoration(
                color: colorRed,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(color: colorWhite, fontSize: 13),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(CupertinoIcons.heart),
        color: colorWhite,
      ),
    ],
  );
}
