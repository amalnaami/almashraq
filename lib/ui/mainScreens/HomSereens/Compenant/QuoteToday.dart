import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/ui/common_widget/networkImage.dart';
import 'package:maktabeh_app/ui/mainScreens/allReviewsPage.dart';
import 'package:maktabeh_app/ui/mainScreens/all_quotes_screen.dart';

import 'QuoteCard.dart';

class QuoteToday extends StatefulWidget {
  final Quote quote;
  const QuoteToday(this.quote);
  @override
  _QuoteTodayState createState() => _QuoteTodayState();
}

class _QuoteTodayState extends State<QuoteToday> {
  @override
  Widget build(BuildContext context) {
    print(widget.quote);
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
                onTap: () => push(context, AllQuote()),
                child: Text(
                  AppLocalizations.of(context).translate('see more'),
                  style: lightStyle.copyWith(fontSize: 10),
                ),
              ),
            ],
          ),
        ),
        if(widget.quote != null)
        QuoteCard(quote: widget.quote,),
      ],
    );
  }
}
