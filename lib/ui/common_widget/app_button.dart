import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';

Widget appButton(
    {BuildContext context,
    Color buttonColor,
    Color textColor,
    String text,
    Function onTap}) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    height: MediaQuery.of(context).size.height * 0.07,
    child: FlatButton(
        color: buttonColor ?? primaryColor,
        onPressed: onTap ?? () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(text,
            style: regStyle.copyWith(
                fontSize: 14, color: textColor ?? Colors.white))),
  );
}
