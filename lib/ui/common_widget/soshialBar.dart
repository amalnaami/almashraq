import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SoshialBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/svg/facebook.svg",
          width: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.asset(
          "assets/svg/twitter.svg",
          width: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.asset(
          "assets/svg/instagram.svg",
          width: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.asset(
          "assets/svg/telegram.svg",
          width: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.asset(
          "assets/svg/whatsup.svg",
          width: 30,
        ),
      ],
    );
  }
}
