import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/CategorisCard.dart';

class HomeCategoris extends StatefulWidget {
  @override
  _HomeCategorisState createState() => _HomeCategorisState();
}

class _HomeCategorisState extends State<HomeCategoris> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Column(
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
                      AppLocalizations.of(context).translate('sections'),
                      style: boldStyle,
                    ),
                  ],
                ),
                Text(
                  AppLocalizations.of(context).translate('see all'),
                  style: lightStyle.copyWith(fontSize: 10),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            padding: EdgeInsetsDirectional.only(start: 10),
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CategorisCard();
            },
          ))
        ],
      ),
    );
  }
}
