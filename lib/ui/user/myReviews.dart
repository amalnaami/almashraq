import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/common_widget/reviewCard.dart';

class MyReviews extends StatefulWidget {
  @override
  _MyReviewsState createState() => _MyReviewsState();
}

class _MyReviewsState extends State<MyReviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context, AppLocalizations.of(context).translate("my reviews")),
        body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 3,
          itemBuilder: (context, index) {
            return ReviewCard();
          },
        ));
  }
}
