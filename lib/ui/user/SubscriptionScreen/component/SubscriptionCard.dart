import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';

class SubscriptionCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function onTap;

  const SubscriptionCard({Key key, this.onTap, this.title, this.subTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: (MediaQuery.of(context).size.width / 2),
        width: (MediaQuery.of(context).size.width / 2) - 30,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
              ),
              height: (MediaQuery.of(context).size.width / 2) - 30,
              width: (MediaQuery.of(context).size.width / 2) - 30,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/Iconly-Broken-Discount.png"),
                  SizedBox(height: 5),
                  Text(
                    title,
                    style: regStyle.copyWith(color: seconderyColor),
                  ),
                  SizedBox(height: 5),
                  Text(
                    subTitle,
                    textAlign: TextAlign.center,
                    style: lightStyle.copyWith(fontSize: 11),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              width: (MediaQuery.of(context).size.width / 2) - 30,
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor,
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/Iconly.svg",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
