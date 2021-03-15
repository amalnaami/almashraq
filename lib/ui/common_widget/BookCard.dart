import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/ui/book/book_screen.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';

class BookCard extends StatefulWidget {
  final Book book;
  final int singleBookId;
  const BookCard({this.book,this.singleBookId});
  @override
  _BookCardState createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      ///TO DO
      onTap: () => push(context, BookScreen(singleBook: widget.book,bookId: widget.singleBookId,)),
      child: Container(
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width / 3.2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                widget.book.image,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.18,
              ),
            ),
            // Expanded(
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(8),
            //     child: Image.asset(
            //       "assets/image/2.jpg",
            //       fit: BoxFit.fill,
            //       // height: double.infinity,
            //       // width: double.infinity,
            //     ),
            //   ),
            // ),
            Text(
              //AppLocalizations.of(context).translate('novel name'),
              widget.book.getName(AppLocalizations.of(context).locale.languageCode),
              style: regStyle,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                ImageIcon(
                  AssetImage("assets/icons/Profile.png"),
                  color: Colors.blue,
                  size: 12,
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    "${widget.book.getPublish(AppLocalizations.of(context).locale.languageCode)}",
                    style: lightStyle.copyWith(color: Colors.blue),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            rateStars(15, widget.book.rate),
            //rateStars(widget.book.rate.toDouble()),
          ],
        ),
      ),
    );
  }
}
