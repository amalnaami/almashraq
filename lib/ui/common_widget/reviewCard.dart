import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';
import 'package:maktabeh_app/ui/common_widget/soshialBar.dart';

class ReviewCard extends StatefulWidget {
  @override
  _ReviewCardState createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.32,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2000),
                        child: Image.asset(
                          "assets/image/3.jpg",
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppLocalizations.of(context).translate('example name'),
                                  style: boldStyle,
                                ),
                                Row(
                                  children: [
                                    rateStars(16),
                                    SizedBox(width: 8),
                                    // Icon(
                                    //   Icons.share,
                                    //   size: 18,
                                    //   color: seconderyColor,
                                    // ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "كتاب رائع جدا ولقد نال اعجابي وواو",
                              style: regStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SoshialBar(),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/image/4.jpg",
                                height: double.infinity,
                                fit: BoxFit.fill,
                                width: double.infinity,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    ImageIcon(
                                      AssetImage("assets/icons/book.png"),
                                      color: primaryColor,
                                      size: 15,
                                    ),
                                    Text(AppLocalizations.of(context).translate('book'),
                                        style: regStyle.copyWith(fontSize: 10)),
                                  ],
                                ),
                                Text(
                                  "لحظات",
                                  style: boldStyle,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    ImageIcon(
                                      AssetImage("assets/icons/Profile.png"),
                                      color: primaryColor,
                                      size: 15,
                                    ),
                                    Text(AppLocalizations.of(context).translate('author'),
                                        style: regStyle.copyWith(fontSize: 10)),
                                  ],
                                ),
                                Text(
                                  AppLocalizations.of(context).translate('Taha husien'),
                                  style: boldStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                        ),
                        color: Color(0xff1a6c9e),
                      ),
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: Text(
                        AppLocalizations.of(context).translate('watch reviews for the same book'),
                        textAlign: TextAlign.center,
                        style: regStyle.copyWith(color: Colors.white),
                      ),
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
