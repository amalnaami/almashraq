import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/networkImage.dart';

import 'QuoteCard.dart';

class QuoteToday extends StatefulWidget {
  @override
  _QuoteTodayState createState() => _QuoteTodayState();
}

class _QuoteTodayState extends State<QuoteToday> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
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
        ),
        QuoteCard(),
      ],
    );
  }
}
