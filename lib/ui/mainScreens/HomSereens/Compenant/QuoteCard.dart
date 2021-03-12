
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/ui/common_widget/soshialBar.dart';
import 'package:maktabeh_app/ui/widgets/widgets.dart';

class QuoteCard extends StatelessWidget {
  final String title;
  final Quote quote;

  const QuoteCard({Key key, this.title, this.quote}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('quote is $quote');
    return quote == null ? Container() : Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(8),
      child: Container(
        //height: MediaQuery.of(context).size.height * 0.2,
        width: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey[300], blurRadius: 3, spreadRadius: 2),
          ],
          color: Colors.white,
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                quote.book.image,
                height: MediaQuery.of(context).size.height * 0.15,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.height * 0.15,
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Expanded(
              //flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ReadMoreText(
                    "\"${quote.quotation_text}\"",
                    trimLines: 1,
                    textDirection:
                        AppLocalizations.of(context).locale.languageCode == 'ar'
                            ? TextDirection.ltr
                            : TextDirection.rtl,
                    style: regStyle.copyWith(color: Colors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.network(
                        "assets/svg/book.svg",
                        height: 15,
                      ),
                      // ImageIcon(
                      //   AssetImage("assets/icons/book.png"),
                      //   color: primaryColor,
                      //   size: 12,
                      // ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          "${quote.getBookName(AppLocalizations.of(context).locale.languageCode)}",
                          style: regStyle.copyWith(fontSize: 12),
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/svg/Broken-Profile.svg",
                        height: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          "${quote.getAuthorName(AppLocalizations.of(context).locale.languageCode)}",
                          style: regStyle.copyWith(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  SoshialBar(quote.quotation_text),
                  SizedBox(height: 4),
                  if (title == "الاقتباسات" || title == 'quotes')
                    Text(
                      AppLocalizations.of(context)
                          .translate('quotes for the same author'),
                      style: regStyle.copyWith(color: Colors.grey),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
