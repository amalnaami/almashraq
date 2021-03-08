import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

Widget buildLocalImage(String url, {double width, double height, Color color}) {
  return SvgPicture.asset(
    url,
    color: color,
    alignment: Alignment.center,
    width: width,
    height: height,
  );
}
