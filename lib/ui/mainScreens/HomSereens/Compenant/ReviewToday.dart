import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/review/review.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';
import 'package:maktabeh_app/ui/widgets/widgets.dart';

import '../../allReviewsPage.dart';

class ReviewToday extends StatefulWidget {
  final Review review;

  const ReviewToday(this.review);

  @override
  _ReviewTodayState createState() => _ReviewTodayState();
}

class _ReviewTodayState extends State<ReviewToday> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 3,
                    color: Color(0xFF1A6C9E),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                  ),
                  Text(
                    AppLocalizations.of(context).translate('today review'),
                    style: boldStyle,
                  ),
                ],
              ),
              InkWell(
                onTap: () => push(context, AllReviewsPage()),
                child: Text(
                  AppLocalizations.of(context).translate('see more'),
                  style: lightStyle.copyWith(fontSize: 10),
                ),
              ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300],
                    blurRadius: 3,
                    spreadRadius: 2),
              ],
              color: Colors.white,
            ),
            width: double.infinity,
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: widget.review.user_image == null ? Container() : Image.network(
                      widget.review.user_image,
                      //height: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.15,
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.height * 0.15,
                      //width: double.infinity,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.review.user_name}',
                            //AppLocalizations.of(context).translate('example name'),
                            style: boldStyle.copyWith(fontSize: 12),
                          ),
                          Spacer(),
                          rateStars(16, int.parse(widget.review.rating)),
                          SizedBox(width: 8),
                        ],
                      ),
                      // Text(
                      //   "${widget.review.review_text}",
                      //   style: lightStyle.copyWith(fontSize: 12),
                      // ),
                      ReadMoreText(
                        "${widget.review.review_text}",
                        style: lightStyle.copyWith(fontSize: 12, color: Colors.black),
                        trimLines: 1,
                        textDirection:
                        AppLocalizations.of(context).locale.languageCode == 'ar'
                            ? TextDirection.ltr
                            : TextDirection.rtl,
                      ),
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage("assets/icons/book.png"),
                            color: primaryColor,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text(
                              "${widget.review.getBookName(AppLocalizations.of(context).locale.languageCode)}",
                              style: lightStyle.copyWith(fontSize: 10),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ImageIcon(
                            AssetImage("assets/icons/Profile.png"),
                            color: primaryColor,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text(
                              "${widget.review.getAuthorName(AppLocalizations.of(context).locale.languageCode)}",
                              style: lightStyle.copyWith(fontSize: 10),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
