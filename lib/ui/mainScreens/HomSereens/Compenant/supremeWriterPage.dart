import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/ui/common_widget/outhorCard.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/all_auther_screen.dart';


class SupremeWriterPage extends StatefulWidget {
  final BuiltList<Author> authors;
  final Function(int) seeMoreCallback;
  const SupremeWriterPage(this.authors, {this.seeMoreCallback});
  @override
  _SupremeWriterPageState createState() => _SupremeWriterPageState();
}

class _SupremeWriterPageState extends State<SupremeWriterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      AppLocalizations.of(context).translate('The most famous authors'),
                      style: boldStyle,
                    ),
                  ],
                ),
                InkWell(
                   onTap: () => widget.seeMoreCallback.call(2),
                  child: Text(
                    AppLocalizations.of(context).translate('see more'),
                    style: lightStyle.copyWith(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(right: 5, left: 5),
              childAspectRatio: (1 / 1.8),
              crossAxisCount: 3,
              children: List.generate(widget.authors.length, (index) {
                return OuthorCard(author: widget.authors[index]);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
