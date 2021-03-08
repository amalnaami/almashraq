import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/Compenant/QuoteCard.dart';

class MyQuote extends StatefulWidget {
  final String title;
  final bool fromHome;
  const MyQuote({Key key, @required this.title, this.fromHome}) : super(key: key);
  @override
  _MyQuoteState createState() => _MyQuoteState();
}

class _MyQuoteState extends State<MyQuote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.fromHome==true?null:customAppBar(context, AppLocalizations.of(context).translate('my quotes')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(AppLocalizations.of(context).translate(widget.title), style: boldStyle),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: 3,
              itemBuilder: (context, index) {
                return QuoteCard(title: widget.title);
              },
            ),
          ),
        ],
      ),
    );
  }
}
