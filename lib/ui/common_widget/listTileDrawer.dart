import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';

Widget drawerListTile(
    {String title, Widget icon, Function onTap, bool selected}) {
  return ListTile(
    title: Text(
      title,
      style: regStyle.copyWith(
          color: selected == true ? seconderyColor : Colors.grey),
    ),
    leading: icon,
    onTap: onTap,
  );
}
