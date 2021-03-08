import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/book/book_screen.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';

class BookCard extends StatefulWidget {
  @override
  _BookCardState createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => push(context, BookScreen()),
      child: Container(
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width / 3.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/image/2.jpg',
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
              AppLocalizations.of(context).translate('novel name'),
              style: regStyle,
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
                Text(
                  "text",
                  style: lightStyle.copyWith(color: Colors.blue),
                ),
              ],
            ),
            rateStars(15),
          ],
        ),
      ),
    );
  }
}
