import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/review/review.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';
import 'package:maktabeh_app/ui/common_widget/soshialBar.dart';
import 'package:maktabeh_app/ui/review/review_screen.dart';
import 'package:maktabeh_app/ui/widgets/widgets.dart';

class ReviewCard extends StatefulWidget {
  final Review review;
  final bool isLogin;
  const ReviewCard({this.review, this.isLogin});
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
                        child: widget.review.user_image == null ? Container() : Image.network(
                          widget.review.user_image,
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
                                  '${widget.review.user_name}',
                                  style: boldStyle,
                                ),
                                Row(
                                  children: [
                                    rateStars(16, 5),
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
                            ReadMoreText(
                              '${widget.review.review_text}',
                              trimLines: 1,
                              textDirection:
                              AppLocalizations.of(context).locale.languageCode == 'ar'
                                  ? TextDirection.ltr
                                  : TextDirection.rtl,
                              style: regStyle.copyWith(color: Colors.black),
                            ),
                            // Text(
                            //   "كتاب رائع جدا ولقد نال اعجابي وواو",
                            //   style: regStyle,
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SoshialBar('${widget.review.review_text}'),
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
                              child: Image.network(
                                widget.review.book.image,
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
                                  '${widget.review.book.getName(AppLocalizations.of(context).locale.languageCode)}',
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
                                  '${widget.review.getAuthorName(AppLocalizations.of(context).locale.languageCode)}',
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
                      child: InkWell(
                        onTap: () {
                          push(context, ReviewScreen(isLogin: widget.isLogin, bookid: widget.review.book.id,));
                        },
                        child: Text(
                          AppLocalizations.of(context).translate('watch reviews for the same book'),
                          textAlign: TextAlign.center,
                          style: regStyle.copyWith(color: Colors.white),
                        ),
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
