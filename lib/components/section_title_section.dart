import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/style.dart';

Padding TitleSection(context,String title){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: HomeHeaderText()),
        TextButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, '/care');
          },
          icon: Icon(Icons.keyboard_arrow_right_outlined),
          iconAlignment: IconAlignment.end,
          label: Text("View all"),
        ),
      ],
    ),
  );
}
