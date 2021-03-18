import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';

class CustomFeild2 extends StatelessWidget {
  final String hintText;
  final String iconPath;
  final bool visab;
  final String headIcon;
  final String initial;
  final int lines;
  final String title;
  final TextEditingController controller;

  const CustomFeild2(
      {Key key,
      this.hintText,
        this.controller,
      this.iconPath,
      this.visab,
        this.initial,
      this.lines,
      this.title,
      this.headIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        title == null
            ? SizedBox()
            : Column(
                children: [
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage(headIcon),
                        size: 20,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        title,
                        style: regStyle.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: TextFormField(
            initialValue: initial,
            controller: controller,
            maxLines: lines ?? 1,
            decoration: InputDecoration(
              fillColor: Color(0xFFFBFBFB),
              filled: true,
              hintStyle: regStyle.copyWith(color: Color(0xFFC4C4C4)),
              hintText: hintText,
              suffixIcon: visab == true
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/svg/Show.svg",
                      ),
                    )
                  : null,
              prefixIcon: iconPath == null
                  ? null
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        iconPath,
                      ),
                    ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
