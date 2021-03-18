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
        width: double.infinity,
        //height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: widget.review.user_image == null
                        ? Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.height * 0.15,
                          )
                        : Image.network(
                            widget.review.user_image,
                            height: MediaQuery.of(context).size.height * 0.15,
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.height * 0.15,
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
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${widget.review.user_name}',
                              style: boldStyle,
                            ),
                            //Expanded(child: Container()),
                            Spacer(),
                            rateStars(16, int.parse(widget.review.rating)),
                            SizedBox(width: 8)
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ReadMoreText(
                          '${widget.review.review_text}',
                          trimLines: 1,
                          textDirection: AppLocalizations.of(context)
                                      .locale
                                      .languageCode ==
                                  'ar'
                              ? TextDirection.ltr
                              : TextDirection.rtl,
                          style: regStyle.copyWith(color: Colors.black),
                        ),
                        // Text(
                        //   "كتاب رائع جدا ولقد نال اعجابي وواو",
                        //   style: regStyle,
                        // ),
                        SizedBox(
                          height: 16,
                        ),
                        SoshialBar('${widget.review.review_text}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: widget.review.book.image == null ? Container(
                        width: MediaQuery.of(context).size.height * .13,
                        height: MediaQuery.of(context).size.height * 0.18,
                      ) : Image.network(
                        widget.review.book.image,
                        height: MediaQuery.of(context).size.height * 0.18,
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.height * .13,
                        //width: double.infinity,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
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
                            Text(
                                AppLocalizations.of(context)
                                    .translate('book'),
                                style: regStyle.copyWith(fontSize: 10)),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Text(
                          '${widget.review.book.getName(AppLocalizations.of(context).locale.languageCode)}',
                          style: boldStyle,
                        ),
                        SizedBox(height: 4,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ImageIcon(
                              AssetImage("assets/icons/Profile.png"),
                              color: primaryColor,
                              size: 15,
                            ),
                            Text(
                                AppLocalizations.of(context)
                                    .translate('author'),
                                style: regStyle.copyWith(fontSize: 10)),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Text(
                          '${widget.review.getAuthorName(AppLocalizations.of(context).locale.languageCode)}',
                          style: boldStyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 4,),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Color(0xff1a6c9e),
                      // /padding: EdgeInsets.all(20),
                      //alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          push(
                              context,
                              ReviewScreen(
                                isLogin: widget.isLogin,
                                bookid: widget.review.book.id,
                              ));
                        },
                        child: Text(
                          AppLocalizations.of(context)
                              .translate('watch reviews for the same book'),
                          textAlign: TextAlign.center,
                          style: regStyle.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
