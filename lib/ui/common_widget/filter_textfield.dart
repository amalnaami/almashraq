import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';

Widget filterTextField(
    {String hint, double height, double width, Widget suffixIcon}) {
  return Container(
    width: width ?? SizeConfig.screenWidth * 0.4,
    height: height ?? SizeConfig.screenHeight * 0.07,
    child: TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color(0xFFCBCBCB)),
          borderRadius: BorderRadius.circular(5),
        ),
        suffixIcon: suffixIcon,
        hintText: hint,
        hintStyle: regStyle.copyWith(color: Color(0xFFCBCBCB), fontSize: 12),
        contentPadding: EdgeInsets.all(12),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color(0xFFCBCBCB)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
  );
}
