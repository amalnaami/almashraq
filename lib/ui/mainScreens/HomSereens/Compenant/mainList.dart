import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/ui/book/all_books.dart';
import 'package:maktabeh_app/ui/common_widget/BookCard.dart';
import 'package:built_collection/built_collection.dart';
import 'package:page_transition/page_transition.dart';


class MainList extends StatefulWidget {
  final String title;
  final BuiltList<Book> books;
  final Widget goto;
  const MainList({Key key, this.title, this.books, this.goto}) : super(key: key);
  @override
  _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: h * 0.37,
      width: w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8, left: 8, bottom: 8),
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
                      widget.title,
                      style: boldStyle,
                    ),
                  ],
                ),
                InkWell(
                //  onTap: () => push(context, widget.goto),
                  onTap: (){
                    Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          child:  widget.goto,
                          inheritTheme: true,
                          ctx: context),
                    );
                  },
                  child: Text(
                    AppLocalizations.of(context).translate('see more'),
                    style: lightStyle.copyWith(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: widget.books == null ? Container() : ListView.builder(
            itemCount: widget.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return BookCard(book:widget.books[index],singleBookId: index,);
            },
          ))
        ],
      ),
    );
  }
}
