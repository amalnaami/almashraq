import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';

class OptionalFeild extends StatelessWidget {
  final String title;
  final Function onTap;
  final String iconPath;

  const OptionalFeild({Key key, this.title, this.onTap, this.iconPath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFFFBFBFB),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        onTap: () {},
        title: Text(
          title,
          style: lightStyle.copyWith(color: Colors.grey),
        ),
        trailing: SvgPicture.asset(
          "assets/svg/arrow_down.svg",
        ),
        leading: ImageIcon(
          AssetImage(iconPath),
          color: Colors.grey,
        ),
      ),
    );
  }
}
