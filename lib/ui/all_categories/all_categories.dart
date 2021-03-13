import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/ui/common_widget/CategorisCard.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';

class AllCategories extends StatefulWidget {
  final BuiltList<Category> categories;
  const AllCategories({this.categories});
  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(AppLocalizations.of(context).translate('All categories'), context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 20,
                width: 3,
                color: Color(0xFF1A6C9E),
                margin: const EdgeInsets.symmetric(horizontal: 5),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  AppLocalizations.of(context).translate('section'),
                  style: boldStyle,
                ),
              ),
            ],
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
              children: List.generate(widget.categories.length, (index) {
                return CategorisCard(category: widget.categories[index],);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
