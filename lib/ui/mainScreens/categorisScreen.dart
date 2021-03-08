import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/CategorisCard.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              AppLocalizations.of(context).translate('section'),
              style: boldStyle,
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.only(
                top: 10,
                right: 10,
                left: 10,
                bottom: 70,
              ),
              crossAxisCount: 3,
              children: List.generate(20, (index) {
                return CategorisCard();
              }),
            ),
          ),
        ],
      ),
    );
  }
}
