import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/quote/quote.dart';

import 'QuoteCard.dart';

class QuoteToday extends StatefulWidget {
  final Quote quote;
  final Function(int) callBack;
  const QuoteToday(this.quote, this.callBack);
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
                    AppLocalizations.of(context).translate('today quotes'),
                    style: boldStyle,
                  ),
                ],
              ),
              InkWell(
                onTap: () => widget.callBack.call(3),
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
